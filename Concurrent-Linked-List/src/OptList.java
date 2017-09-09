public class OptList implements IntSet {
	
	public static void printList(Node head) {
		Node curr = head;
		while (curr.key < Integer.MAX_VALUE) {
			System.out.println("list value : " + curr.key);
			curr = curr.next;
		}
	}

	public boolean insert(Node head, int key, long end) {
				
		while (System.currentTimeMillis() < end) {
			Node pred = head;
			Node curr = pred.next;
			while (curr.key < key) {
				pred = curr;
				curr = pred.next;
			}
			pred.reentlock.lock();
			curr.reentlock.lock();
			try {

				if (validate(pred, curr, head)) {
					if (curr.key == key) {
						return false;
					}
					Node node = new Node(key);
					node.next = curr;
					pred.next = node;
					return true;
				}
			} finally {
				pred.reentlock.unlock();
				curr.reentlock.unlock();
			}

		}
		return false;
	}

	public boolean remove(Node head, int key, long end) {
		while (System.currentTimeMillis() < end) {
			Node pred = head;
			Node curr = pred.next;
			
			while (curr.key < key) {
				pred = curr;
				curr = pred.next;
			}
			
			pred.reentlock.lock();
			curr.reentlock.lock();
			
			try {

				if (validate(pred, curr, head)) {
					if (curr.key == key) {
						pred.next = curr.next;
						return true;
					}
					return false;
				}
			} finally {
				pred.reentlock.unlock();
				curr.reentlock.unlock();
			}
		}
		return false;
	}

	public boolean contains(Node head, int key, long end) {
		while (System.currentTimeMillis() < end) {
			Node pred = head;
			Node curr = pred.next;
			while (curr.key < key) {
				pred = curr;
				curr = pred.next;
			}
			pred.reentlock.lock();
			curr.reentlock.lock();
			try {
				if (validate(pred, curr, head)) {
					return (curr.key == key);
				}
			} finally {
				pred.reentlock.unlock();
				curr.reentlock.unlock();
			}
		}
		return false;
	}

	private boolean validate(Node pred, Node curr, Node head) {
		Node node = head;
		
		while (node.key <= pred.key) {
			if (node.key == pred.key) {
				if (pred.next == curr) {
					return true;
				}
			}
			node = node.next;

		}
		return false;
	}
}
