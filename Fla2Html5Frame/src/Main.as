package 
{
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import org.aswing.ASColor;
	import org.aswing.AsWingManager;
	import org.aswing.AsWingUtils;
	import org.aswing.border.EmptyBorder;
	import org.aswing.Component;
	import org.aswing.GradientBackground;
	import org.aswing.Insets;
	import org.aswing.JFrame;
	import org.aswing.JTabbedPane;
	import org.aswing.JWindow;
	import org.aswing.plaf.ASColorUIResource;
	import org.aswing.plaf.basic.frame.BasicFrameTitleBarBG;
	import org.aswing.plaf.ComponentUI;
	import org.aswing.SolidBackground;
	import org.aswing.UIManager;
	import panels.DOMTree;
	
	/**
	 * ...
	 * @author Lee
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			super();
		
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.stageFocusRect = false;
			AsWingManager.setRoot(this);
			var window:JWindow = new JWindow(this);
			
			var frame:JFrame = new JFrame(AsWingUtils.getPopupAncestor(window), "选项");
			//修改标题栏背景色
            var ui:ComponentUI = frame.getUI();
            ui.putDefault("Frame.mideground", new ASColorUIResource(0xcccccc,.5));
			frame.setUI(ui);
			//修改字体颜色与标题栏按钮背景色
            var titleBar:Component = frame.getTitleBar().getSelf();
            ui = titleBar.getUI();
            ui.putDefault("FrameTitleBar.foreground",new ASColorUIResource(0x000000));
            ui.putDefault("FrameTitleBar.mideground",new ASColorUIResource(0x000000,.5));
            titleBar.setUI(ui);
			
			var tabPanel:JTabbedPane = new JTabbedPane();
			tabPanel.append(new DOMTree());
			
			frame.setContentPane(tabPanel);
			frame.setClosable(false);
			frame.show();
			
			window.setBackgroundDecorator(new SolidBackground(UIManager.getColor("window")));
			window.setContentPane(frame);
			window.setSizeWH(800, 600);
			window.show();
		}
		
	}
	
}