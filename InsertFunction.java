class Node{
    int val;
    Node next;
    Node(int val){
        this.val = val;
    }
}
class LinkedList {
    Node head;
    Node tail;
    int size;

    int search(int key) {
        Node temp = head;
        int idx = 0;
        while (temp != null) {
            if (temp.val == key) return idx;
            temp = temp.next;
            idx++;
        }
        return -1;
    }

    void insertAtHead(int val) {
        Node temp = new Node(val);
        if (head == null)
            head = tail = temp;
        else {
            temp.next = head;
            head = temp;
        }
        size++;
    }

    void insertAtTail(int val) {
        Node temp = new Node(val);
        if (tail == null)
            head = tail = temp;
        else {
            tail.next = temp;
            tail = temp;
        }
        size++;
    }
    void deleteAtHead() {
        head = head.next;
        if (head == null) tail = null;
        size--;
    }

    void display() {
        Node temp = head;
        while (temp != null) {
            System.out.print(temp.val + " ");
            temp = temp.next;
        }
        System.out.println();
    }

    void insert(int val, int idx) {
        if (idx < 0 || idx > size) {
            System.out.println("Invalid index");
            return;
        }
        if (idx == 0) insertAtHead(val);
        else if (idx == size) insertAtTail(val);
        else {
            Node temp = head;
            for (int i = 1; i <= idx-1; i++) {
                temp = temp.next;
            }

            Node t = new Node(val);
            t.next = temp.next;
            temp.next = t;
            size++;
        }
    }

    int get(int idx) {
        Node temp = head;
        for (int i = 1; i <= idx-1; i++) {
            temp = temp.next;
        }
        return temp.val;
    }
    void delete(int idx) {
        Node temp = head;
        for(int i =1; i <= idx-1; i++){
            temp = temp.next;
        }
        temp.next = temp.next.next; //delete
        if (idx =size-1) tail = temp;  // deleting tail
        size--;
    }
}
public class InsertFunction{
    public static void main(String[] args) {
        LinkedList list = new LinkedList();
        list.insertAtTail(10);
        list.insertAtTail(20);
        list.insertAtTail(30);
        list.insertAtTail(40);
        list.display();
        list.insertAtHead(50);
        list.display();
        System.out.println(list.search(30));
        System.out.println(list.search(100));
        list.insert(45,3);
        list.display();
        System.out.println(list.get(1));
        list.delete(3);
        list.display();
    }
}