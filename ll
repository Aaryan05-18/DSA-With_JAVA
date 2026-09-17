public class singlyLinkedList {
    static class Node{
        int data;
        Node next;
        //constructor
        Node(int data){
            this.data=data;
            this.next=null;
        }
    }
    private Node head;
    private Node tail;
    private int size;
    //constructor
    public singlyLinkedList(){
        this.head=null;
        this.tail=null;
        this.size=0;
    }
    // Insertion at Head..........
    public void insertAtHead(int data){
        Node newNode=new Node(data);
        if(head==null){
            this.head=newNode;
            this.tail=newNode;
        }
        else{
            newNode.next=head;
            head=newNode;
        }
        size++;
    }

    //Insertion at Tail.........
    public void insertAtTail(int data){
        Node newNode=new Node(data);
        if(head==null){
            this.head=newNode;
            this.tail=newNode;
        }
        else{
            tail.next=newNode;
            tail=newNode;
        }
        this.size++;
    }

    //Insertion at Position.........
    public void insertAtPosition(int pos,int data){
        if(pos<1 || pos>size+1){
            //inserton not Possible
            System.out.println("Insertion is not possible at this position");
            return;
        }
        if(pos==1){
            insertAtHead(data);
        }
        if(pos==size+1){
            insertAtTail(data);
        }
        Node prevNode=head;
        for (int i = 1; i <=pos-2 ; i++) {
           prevNode=prevNode.next;
        }
        Node newNode=new Node(data);
        newNode.next=prevNode.next;
        prevNode.next=newNode;
        size++;
    }

    //Traversal and PrintList......
    public void printlist(){
        Node temp=head;
        while (temp!=null){
            System.out.print(temp.data+"->");
            temp=temp.next;
        }
        System.out.println();
    }

    //Print the size of LL
    public int getSize(){
        return size;
    }
    public int getHead(){
        if(head==null){
            return -1;
        }
        else{
            return head.data;
        }
    }
    public int getTail(){
        if(tail==null){
            return -1;
        }
        else{
            return tail.data;
        }
    }
    //Search in Linked List.........
    public boolean search(int target){
        Node temp=head;
        while(temp!=null){
            if(temp.data==target){
                return true;
            }
            else{
                temp=temp.next;
            }
        }
        return false;
    }


    //Find Index In Linked List
    public int findIndex(int target){
        Node temp=head;
        int pos=1;
        while(temp!=null){
            if(temp.data==target){
                return pos;
            }
            else{
                temp=temp.next;
                pos++;
            }
        }
        return -1;
    }


    // Update at Particular Index..........
    public void updateAtIndex(int pos,int newData){
        if(pos<1 || pos>size+1){
            System.out.println("invalid pos");
            return;
        }
        Node temp=head;
        for (int i = 1; i <=pos-1 ; i++) {
            temp=temp.next;
        }
        temp.data=newData;
    }

    //update value from old value
    public void updateVal(int oldVal,int newVal){
        Node temp=head;
        while(temp!=null){
            if(temp.data==oldVal){
                temp.data=newVal;
            }
            temp=temp.next;
        }
    }

    //Deletion At Head.................
    public void delAtHead(){
        if(head==null){
            System.out.println("List is Empty Already");
            return;
        }
        head=head.next;
        size--;
        if(head==null){
            tail=null;
        }
    }
    public void delAtTail(){
        if(head==null){
            System.out.println("List is Empty");
            return;
        }
        if(head==tail){
            head=null;
            tail=null;
            size=0;
            return;
        }
        Node temp=head;
        for (int i = 1; i <=size-2 ; i++) {
            temp=temp.next;
        }
        temp.next=null;
        tail=temp;
        size--;
    }
    public void delAtPos(int pos){
        if(head==null){
            System.out.println("List Is Empty");
            return;
        }
        if(head==tail){
            head=null;
            tail=null;
            size=0;
            return;
        }
        if(pos<1 || pos>size){
            System.out.println("Invalid Pos");
            return;
        }
        if(pos==1){
            delAtHead();
            return;
        }
        if(pos==size){
            delAtTail();
            return;
        }
        Node temp=head;
        for (int i = 1; i <=pos-2 ; i++) {
            temp=temp.next;
        }
        Node curr=temp.next;
        temp.next=curr.next;
        curr.next=null;
        size--;
    }
    public boolean delAtValue(int val){
        if(head==null){
            System.out.println("List is Empty");
            return false;
        }
        if(head.data==val){
            delAtHead();
            return true;
        }
        Node prev=head;
        Node curr=prev.next;
        while(curr!=null && curr.data!=val){
            prev=prev.next;
            curr=curr.next;
        }
        if(curr==null){
            return false;
        }
        prev.next=curr.next;
        curr.next=null;
        if(prev.next==null){
            tail=prev;
        }
        size--;
        return true;
    }

    public void reverseSLL(){
        if(head==null){
            System.out.println("List is Empty");
            return;
        }
        Node prev=null;
        Node curr=head;
        while (curr!=null){
            Node forward=curr.next;
            curr.next=prev;
            prev=curr;
            curr=forward;
            forward=forward.next;
        }
    }
    public static void main(String[] args) {
    singlyLinkedList list=new singlyLinkedList();
    list.insertAtHead(10);
    list.insertAtTail(20);
    list.insertAtTail(40);
    list.insertAtPosition(3,30);
    list.printlist();
    System.out.println("size of ll: "+list.getSize());
//    System.out.println(list.getHead());
//    System.out.println(list.getTail());
//    System.out.println(list.search(30));
//    System.out.println(list.search(100));
//    System.out.println(list.findIndex(40 ));
//    list.updateAtIndex(4,50);
//    list.printlist();
//    list.updateAtIndex(900,999);
//        list.delAtHead();
//        list.delAtTail();
//        list.printlist();
//        list.delAtPos(2);
//        list.printlist();
        list.delAtValue(30);
        list.printlist();
    }
}
