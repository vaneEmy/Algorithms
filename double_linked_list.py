class Node:
    def __init__(self, data=None, next=None, prev=None):
        self.data = data
        self.next = None
        self.prev = None

class DoubleLinkedList:
    def __init__(self):
        self.tail = None
        self.head = None
        self.count = 0

    def append(self, data):
        node = Node(data, None, None)
        if self.head is None:
            self.head = node
            self.tail = self.head
        else:
            node.prev = self.tail
            self.tail.next = node
            self.tail = node
        self.count += 1
    
    def delete(self, data):
        current = self.head
        node_deleted = False
        if current is None:
            node_deleted = False

        elif current.data == data: # Item to be deleted is found at starting of the list
            self.head = current.next
            self.head.prev = None
            node_deleted = True
        
        elif self.tail.data == data: # Item to be deleted is found at the end of the list
            self.tail = current.tail.prev
            self.tail.next = None
            node_deleted = True
        else:
            while current: # search item to be deleted, and delete that node
                if current.data == data:
                    current.prev.next = current.next
                    current.next.prev = current.prev
                    node_deleted = True
                current = current.next
        
        if node_deleted:
            self.count -= 1

    def iter(self):
        current = self.head
        while current:
            val = current.data
            current = current.next
            yield val

    def contain(self, data):
        for node_data in self.iter():
            if data == node_data:
                return True
        return False

words= DoubleLinkedList()
words.append('egg')
words.append('ham')
words.append('spam')
words.append('tomato')
