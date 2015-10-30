package panels 
{
	import org.aswing.BorderLayout;
	import org.aswing.geom.IntDimension;
	import org.aswing.JPanel;
	import org.aswing.JScrollPane;
	import org.aswing.JSplitPane;
	import org.aswing.JTextArea;
	import org.aswing.LayoutManager;
	
	/**
	 * ...
	 * @author Lee
	 */
	public class DOMTree extends JPanel 
	{
		
		public function DOMTree(layout:LayoutManager=null) 
		{
			super(layout);
			name = "DOM";
			
			var split:JSplitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT);
			
			var scrollPane:JScrollPane = new JScrollPane(new JTextArea());
			scrollPane.setPreferredSize(new IntDimension(300, 300));
			
			split.setTopComponent(scrollPane);
		
		append(split, BorderLayout.WEST);
		}
		
	}

}