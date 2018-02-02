#include<iostream>
using namespace std;
//creating class node
class node{
    public:
    int data;
    node *next;
};

class stack{
    node *head,*tail;
    int n;
public:
    stack()//creating constructor for stack.
    {
    head=NULL;
    tail=NULL;
    }
//defining functions for stack.
    void push(int d)
{
node* temp=new node;
temp->data=d;
temp->next=NULL;

if(head==NULL){
    head=temp;
    tail=temp;
    tail->next=NULL;
    n++;
  }
else {
    tail->next=temp;
    tail=temp;
    n++;
  }
}
void pop()
{
    node *temp=head;
    node *temp1=tail;
    int x=1;
    while(x!=n-1)
    {
      temp=temp->next;
      x++;
    }
    tail=temp;
    tail->next=NULL;
    delete temp1;
    n--;
    }   
    void display(){
    node *temp=head;
    for(int i=0; i<n ; i++)
      {
        cout<<temp->data<<" ";
        temp=temp->next;
      }
    }
};

int main(){
stack sl;
int a;
char ch='y';
    while(ch!='n')
    {
        cout<<"1-Push,2-Pop,3-Display"<<endl;
        int cho;
        cout<<"enter your choice"<<endl;
        cin>>cho;
        switch(cho)
            {
            case 1:
                int n1;
                cout<<"enter number"<<endl;
                cin>>n1;
                sl.push(n1);
            break;
            case 2:
                sl.pop();
            break;
            case 3:
                sl.display();
            break;
            default:
                cout<<"Invalid choice"<<endl;
            }
        cout<<"Do you want to continue,if no press n,if yes press any bottom"<<endl;
        cin>>ch;
        }
    if(ch=='n')
        cout<<"Thanks for using my code"<<endl;
    return 0;
}
