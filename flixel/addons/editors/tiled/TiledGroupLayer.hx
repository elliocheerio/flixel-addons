package flixel.addons.editors.tiled;

import flixel.addons.editors.tiled.TiledLayer.TiledLayerType;

#if haxe4
import haxe.xml.Access;
#else
import haxe.xml.Fast as Access;
#end

class TiledGroupLayer extends TiledLayer
{
	public var objects:Array<TiledObject>;
	
	public function new(source:Access, parent:TiledMap)
	{
		super(source, parent);
		type = TiledLayerType.GROUP;
		parent.loadLayers(source);
	}
}