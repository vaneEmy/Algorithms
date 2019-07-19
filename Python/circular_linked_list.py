class Node:
    def __init__(self, data=None, next=None, prev=None):
        self.data = data
        self.next = None
        self.prev = None

class CircularLinkedList:
    def __init__(self):
        self.tail = None
        self.head = None
        self.count = 0

    def append(self, data):
        node = Node(data) 
        if self.head:
            self.head.next = node
            self.head = node
        else:
            self.head = node
            self.tail = node
        
        self.head.next = self.tail
        self.count += 1

    def delete(self, data):
        current = self.tail
        