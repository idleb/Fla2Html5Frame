package panels 
{
	import org.aswing.BorderLayout;
	import org.aswing.JPanel;
	import org.aswing.JScrollPane;
	import org.aswing.JSplitPane;
	import org.aswing.JTextArea;
	import org.aswing.JTree;
	import org.aswing.LayoutManager;
	import org.aswing.geom.IntDimension;
	
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
			
			var scrollPane1:JScrollPane = new JScrollPane(new JTextArea());
			scrollPane1.setPreferredSize(new IntDimension(600, 300));
			
			var scrollPane2:JScrollPane = new JScrollPane(new JTree());
			scrollPane2.setPreferredSize(new IntDimension(300, 300));
			
			split.setLeftComponent(scrollPane1);
			split.setRightComponent(scrollPane2);
			append(split, BorderLayout.CENTER);
		}
		
	}

}