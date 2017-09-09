import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class Node {
	int key;
	Node next;
	final Lock reentlock = new ReentrantLock();

	public Node(int key) {
		this.key = key;
	}

}
