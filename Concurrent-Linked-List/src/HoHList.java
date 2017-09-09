public class HoHList implements IntSet {

	public Node head;

	public boolean insert(Node head, int key, long end) {
		Node pred, curr;
		head.reentlock.lock();
		pred = head;
		try {
			curr = pred.next;
			curr.reentlock.lock();
			try {
				while (curr.key < key) {
					pred.reentlock.unlock();
					pred = curr;
					curr = pred.next;
					curr.reentlock.lock();
				}
				if (curr.key == key)
					return false;
				Node node = new Node(key);
				node.next = curr;
				pred.next = node;
				return true;
			} finally {
				curr.reentlock.unlock();
			}
		} finally {
			pred.reentlock.unlock();
		}
	}

	public boolean remove(Node head, int key, long end) {
		Node pred = null, curr = null;
		head.reentlock.lock();
		try {
			pred = head;
			curr = pred.next;
			curr.reentlock.lock();
			try {
				while (curr.key < key) {
					pred.reentlock.unlock();
					pred = curr;
					curr = pred.next;
					curr.reentlock.lock();
				}
				if (curr.key == key) {
					pred.next = curr.next;
					return true;
				}
				return false;
			} finally {
				curr.reentlock.unlock();
			}
		} finally {
			pred.reentlock.unlock();
		}

	}

	public boolean contains(Node head, int key, long end) {
		Node pred, curr;
		head.reentlock.lock();
		pred = head;
		try {
			curr = pred.next;
			curr.reentlock.lock();
			try {
				while (curr.key < key) {
					pred.reentlock.unlock();
					pred = curr;
					curr = pred.next;
					curr.reentlock.lock();
				}
				return (curr.key == key);
			} finally {
				curr.reentlock.unlock();
			}
		} finally {
			pred.reentlock.unlock();
		}
	}
}
