/* Interface methods to be thread safe and synchronized */
public interface IntSet {
	public boolean insert(Node head, int key, long time);
	public boolean remove(Node head, int key, long time);
	public boolean contains(Node head, int key, long time);
}
