import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class CoarseList implements IntSet {

	public Node head;
	private Lock lock = new ReentrantLock();

	/* method to add */
	public boolean insert(Node head, int key, long end) {
		Node curr, pred;

		lock.lock();
		try {
			pred = head;
			curr = head.next;

			while (curr.key < key) {
				pred = curr;
				curr = curr.next;
			}

			if (curr.key == key) {
				return false;
			} else {
				Node newNode = new Node(key);
				pred.next = newNode;
				newNode.next = curr;
				return true;
			}
		} finally {
			lock.unlock();
		}
	}

	/* method to remove */
	public boolean remove(Node head, int key, long end) {
		Node curr, pred;

		lock.lock();

		try {
			pred = head;
			curr = head.next;

			while (curr.key < key) {
				pred = curr;
				curr = curr.next;
			}

			if (curr.key == key) {
				pred.next = curr.next;
				return true;
			} else {
				return false;
			}
		} finally {
			lock.unlock();
		}
	}

	/* method for contains check */
	public boolean contains(Node head, int key, long end) {
		Node curr, pred;

		lock.lock();

		try {
			pred = head;
			curr = pred.next;

			while (curr.key < key) {
				pred = curr;
				curr = curr.next;
			}

			if (curr.key == key) {
				return true;
			} else {
				return false;
			}
		} finally {
			lock.unlock();
		}
	}
}
