/*
 * This file is part of the foomo Opensource Framework.
 *
 * The foomo Opensource Framework is free software: you can redistribute it
 * and/or modify it under the terms of the GNU Lesser General Public License as
 * published  by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * The foomo Opensource Framework is distributed in the hope that it will
 * be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along with
 * the foomo Opensource Framework. If not, see <http://www.gnu.org/licenses/>.
 */
package org.foomo.zugspitze.services.logger.logging
{
	import flash.display.BitmapData;
	import flash.display.Stage;
	import flash.utils.ByteArray;

	import mx.core.mx_internal;
	import mx.graphics.codec.JPEGEncoder;
	import mx.utils.Base64Encoder;

	import org.foomo.core.Foomo;
	import org.foomo.logging.ILoggingTarget;
	import org.foomo.logging.LogLevel;
	import org.foomo.zugspitze.services.logger.LoggerProxy;
	import org.foomo.zugspitze.services.logger.operations.LogOperation;
	import org.foomo.zugspitze.services.logger.utils.LoggerUtil;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Log;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Report;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Screenshot;

	use namespace mx_internal;

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
	public class LoggerTarget implements ILoggingTarget
	{
		//-----------------------------------------------------------------------------------------
		// ~ Variables
		//-----------------------------------------------------------------------------------------

		private var _report:Report;

		private var _proxy:LoggerProxy;

		private var _stage:Stage;

		private var _clientId:String;

		public var logLevel:int;

		public var includeSystem:Boolean = true;

		public var includeScreenshot:Boolean = false;

		public var includeCapabilities:Boolean = true;

		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function LoggerTarget(clientId:String, stage:Stage, foomo:Foomo, logLevel:int=4)
		{
			this._stage = stage;
			this.logLevel = logLevel;
			this._clientId = clientId;
			this._proxy = new LoggerProxy(foomo.getServiceEndPointUrl('Foomo.Zugspitze', 'logger'));
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public methods
		//-----------------------------------------------------------------------------------------

		public function format(category:String, message:String, level:int):String
		{
			// report
			this._report = LoggerUtil.getReport(this.includeSystem, this.includeCapabilities);

			// log
			this._report.log = new Log;
			this._report.log.category = category;
			this._report.log.level = logLevel;
			this._report.log.levelName = LogLevel.getLevelString(logLevel);
			this._report.log.message = message;


			// screenshot
			if (this.includeScreenshot) {
				var bmd:BitmapData = new BitmapData(this._stage.stageWidth, this._stage.stageHeight, false, 0xffffff);
				bmd.draw(this._stage);
				var jpgencoder:JPEGEncoder = new JPEGEncoder;
				var bytes:ByteArray = jpgencoder.encode(bmd);
				var b64encoder:Base64Encoder = new Base64Encoder
				b64encoder.encodeBytes(bytes);
				this._report.screenshot = new Screenshot;
				this._report.screenshot.base64String = b64encoder.flush();
			}

			return message;
		}

		public function output(message:String, level:int):void
		{
			if (this.logLevel == -1 || this.logLevel > level) return;
			new LogOperation(this._clientId, this._report, this._proxy);
		}
	}
}