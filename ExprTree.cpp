#include "ExprTree.h"
#include <sstream>
#include <iostream>
#include <algorithm> // for using std::remove

/*
 * Helper function that tests whether a string is a non-negative integer.
 */

bool isdigit(const char & c){

  switch (c) {
  case '0' :
  case '1' :
  case '2' :
  case '3' :
  case '4' :
  case '5' :
  case '6' :
  case '7' :
  case '8' :
  case '9' : return true;
  }

  return false;

}

bool is_number(const std::string & s) {
    std::string::const_iterator it = s.begin();
    while (it != s.end() && isdigit(*it)) ++it;
    return !s.empty() && it == s.end();
}

/*
 * Helper function that converts a string to an int.
 */
int to_number(const std::string & s){
  return atoi(s.c_str());
}

/*
 * Helper function that converts a number to a string.
 */
string to_string(const int & n){
  std::stringstream stream;
  stream << n;
  return stream.str();
}

/*
 * Helper function that creates a TreeNode with the appropriate operator
 * when given a string that's "+", "-", "*" or "/". If the string is wrong
 * it gives a NoOp value.
 */
 TreeNode * createOperatorNode(const string & op){

   if (op == "+") return new TreeNode(Plus);
   if (op == "-") return new TreeNode(Minus);
   if (op == "*") return new TreeNode(Times);
   if (op == "/") return new TreeNode(Divide);
   return new TreeNode(NoOp);

 }

/*
 * Basic constructor that sets up an empty Expr Tree.
 */
ExprTree::ExprTree(){
  root=NULL;
  _size=0;
}

/*
 * Constructor that takes a TreeNode and sets up an ExprTree with that node at the root.
 */
 int get_size(TreeNode* node){
   if (node==NULL)
     return 0;
   else
     return get_size(node->getLeftChild()) + 1 + get_size(node->getRightChild());
 }

ExprTree::ExprTree(TreeNode * r){
  root = r;
  _size = get_size(r);
}

/*
 * Destructor to clean up the tree.
 */
ExprTree::~ExprTree(){
  root=0;
}

/*
 * This function takes a string representing an arithmetic expression and breaks
 * it up into components (number, operators, parentheses).
 * It returns the broken up expression as a vector of strings.
 */
//Helper function to check if char is an operator
bool is_operator(char &c) {
  if (c =='+' || c =='-' || c =='*' || c =='/') {
    return true;
  }
    return false;
}

//Helper function to check if string is an operator
bool is_Operator(string &s) {
  if (s=="+"||s=="-"||s=="*"||s=="/")
    return true;
}

//Helper function to check if char an parentheses
bool is_parentheses(char &c) {
  if (c=='(' || c==')') {
    return true;
  }
    return false;
}
//Helper function to remove the spaces
string removeSpaces(string input)
{
  input.erase(std::remove(input.begin(),input.end(),' '),input.end());
  return input;
}

vector<string> ExprTree::tokenise(string expr){
  string input = removeSpaces(expr);

  vector<string> v;
  string s = "";

  for(int i=0; i< input.length(); i++) {
    char c = input[i];

    if (is_parentheses(c)) {
      if (s[0] != '\0') {
        v.push_back(s);
        s = "";
      }
      string bracket = "";
      bracket.push_back(c);
      v.push_back(bracket);
    }

    if (isdigit(c)) {
      s.push_back(c);
    }

    if (is_operator(c)) {
      if (s[0] != '\0') {
        v.push_back(s);
        s = "";
      }
        string mathOperator = "";
        mathOperator.push_back(c);
        v.push_back(mathOperator);

    }

    if (i == (input.length() -1)) {
      if (s[0] != '\0') {
        v.push_back(s);
        s = "";
      }
    }
  }

  return v;
}

/*
 * This function takes a vector of strings representing an expression (as produced
 * by tokenise(string), and builds an ExprTree representing the same expression.
 */

//Helper function to sort out operator precedence
int prec(string s) {
  if (s=="+" || s=="-")
    return 1;
  return 2;
}

  /*
  Helper function to convert infix expression
  to post expression
  */
  vector<string> toPostfix(vector<string> tokens) {
    vector<string> post;
    stack<string> op;

    for (int i=0; i < tokens.size(); i++) {
      string temp = tokens[i];
      if (is_number(temp)) {
        post.push_back(temp);
      }
      else if (temp=="(") {
        op.push(temp);
      }
      else if (temp==")") {
        while(!(op.top()=="(")) {
          post.push_back(op.top());
          op.pop();
        }
        op.pop();
      }
      else if (is_Operator(temp)) {
        if (op.empty() || op.top()=="(" || prec(temp) >= prec(op.top())) {
          op.push(temp);
        } else {
          while (prec(temp) <= prec(op.top())) {
            post.push_back(op.top());
            op.pop();
          }
          op.push(temp);
        }
      }
    }
    while (!(op.empty())) {
      string temp = op.top();
      post.push_back(temp);
      op.pop();
    }
    return post;
}

ExprTree ExprTree::buildTree(vector<string> tokens){
  stack<TreeNode *> stack;
//convert the tokens to postfixt
  vector<string> post = toPostfix(tokens);
  for (int i=0; i< post.size(); i++) {
    if (is_number(post[i])) {
      TreeNode * n = new TreeNode(to_number(post[i]));
      stack.push(n);
    }
    else {
      TreeNode * op = createOperatorNode(post[i]);
      op->setRightChild(stack.top());
      stack.pop();
      op->setLeftChild(stack.top());
      stack.pop();
      stack.push(op);
    }
  }
  return ExprTree(stack.top());
  //return 0;
}

/*
 * This function takes a TreeNode and does the maths to calculate
 * the value of the expression it represents.
 */
int ExprTree::evaluate(TreeNode * n){
  // empty tree
if (!n)
    return 0;

// leaf node i.e, an integer
if (!n->isValue())
    return evaluate(n);

// Evaluate left subtree
int l_val = evaluate(n->getLeftChild());

// Evaluate right subtree
int r_val = evaluate(n->getRightChild());

// Check which operator to apply
if (n->getOperator()==Plus)
    return l_val+r_val;

if (n->getOperator()==Minus)
    return l_val-r_val;

if (n->getOperator()==Times)
    return l_val*r_val;

return l_val/r_val;

}

/*
 * When called on an ExprTree, this function calculates the value of the
 * expression represented by the whole tree.
 */
int ExprTree::evaluateWholeTree(){
  if (isEmpty())
    return 0;
  return evaluate(getRoot());

}

/*
 * Given an ExprTree t, this function returns a string
 * that represents that same expression as the tree in
 * prefix notation.
 */
 //Helper function to read in prefix
 string prefix(TreeNode * n) {
   string output = "";
   if (n) {
     output.append(n->toString());
     if (n->getLeftChild()) {prefix(n->getLeftChild());}
     if (n->getRightChild()) {prefix(n->getRightChild());}
   }
   return output;
 }
string ExprTree::prefixOrder(const ExprTree & t){
  string s = prefix(t.root);
  return s;

}

/*
 * Given an ExprTree t, this function returns a string
 * that represents that same expression as the tree in
 * infix notation.
 */
 //Helper function to read in infix
 string infix(TreeNode * n) {
   string output = "";
   if (n) {
     if (n->getLeftChild()) {infix(n->getLeftChild());}
     output.append(n->toString());
     if (n->getRightChild()) {infix(n->getRightChild());}
   }
   return output;
 }
string ExprTree::infixOrder(const ExprTree & t){

  string s = infix(t.root);
  return s;

}

/*
 * Given an ExprTree t, this function returns a string
 * that represents that same expression as the tree in
 * postfix notation.
 */
 //Helper function to read postfixOrder
 string postfix(TreeNode * n) {
   string output = "";
   if (n) {
     if (n->getLeftChild()) {postfix(n->getLeftChild());}
     if (n->getRightChild()) {postfix(n->getRightChild());}
     output.append(n->toString());
   }
   return output;
 }
string ExprTree::postfixOrder(const ExprTree & t){

  string s = postfix(t.root);
  return s;

}

/*
 * Returns the size of the tree. (i.e. the number of nodes in it)
 */
int ExprTree::size(){ return _size; }


/*
 * Returns true if the tree contains no nodes. False otherwise.
 */
bool ExprTree::isEmpty(){ return _size == 0; }

TreeNode * ExprTree::getRoot() { return root; }
