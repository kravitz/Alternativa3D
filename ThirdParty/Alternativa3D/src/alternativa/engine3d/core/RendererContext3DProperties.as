/**
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * If it is not possible or desirable to put the notice in a particular file, then You may include the notice in a location (such as a LICENSE file in a relevant directory) where a recipient would be likely to look for such a notice.
 * You may add additional accurate notices of copyright ownership.
 *
 * It is desirable to notify that Covered Software was "Powered by AlternativaPlatform" with link to http://www.alternativaplatform.com/ 
 * */

package alternativa.engine3d.core {

	import alternativa.engine3d.materials.ShaderProgram;
	import alternativa.engine3d.resources.Geometry;

	import flash.display3D.Program3D;
    import flash.display3D.VertexBuffer3D;
    import flash.display3D.textures.TextureBase;
    import flash.utils.Dictionary;

	/**
	 * @private
	 * Stores settings of context.
	 */
	public class RendererContext3DProperties {

		public var isConstrained:Boolean = false;
        public var profile:String = '';

		public var backBufferWidth:int = -1;
		public var backBufferHeight:int = -1;
		public var backBufferAntiAlias:int = -1;

		public var program:Program3D;
		public var culling:String;
		public var blendSource:String;
		public var blendDestination:String;

		// View: mouse events
		// Key - vertex program of object, value - program.
		public var drawDistancePrograms:Dictionary = new Dictionary();
		public var drawColoredRectProgram:ShaderProgram;
		public var drawRectGeometry:Geometry;

        public var vertexBuffers:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
        public var vertexBuffersOffsets:Vector.<int> = new Vector.<int>();
        public var vertexBuffersFormats:Vector.<String> = new Vector.<String>();
        public var samplers:Vector.<TextureBase> = new Vector.<TextureBase>();

        public var usedBuffers:uint = 0;
        public var usedSamplers:uint = 0;
	}
}
