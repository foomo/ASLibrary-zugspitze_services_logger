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
package org.foomo.zugspitze.services.logger
{
	import org.foomo.zugspitze.zugspitze_internal;
	import org.foomo.zugspitze.rpc.Proxy;
	import org.foomo.zugspitze.services.logger.calls.LogCall;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Capabilities;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Log;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Report;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Screenshot;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.System;

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
	public class LoggerProxy extends Proxy
	{
		//-----------------------------------------------------------------------------------------
		// ~ Constants
		//-----------------------------------------------------------------------------------------

		public static const VERSION:Number 		= 0.1;
		public static const CLASS_NAME:String 	= 'Foomo\\Zugspitze\\Services\\Logger';

		//-----------------------------------------------------------------------------------------
		// ~ Static variables
		//-----------------------------------------------------------------------------------------

		/**
		 *
		 */
		private static var _instance:LoggerProxy;
		/**
		 *
		 */
		public static var defaultEndPoint:String = "/foomo/modules/Foomo.Zugspitze/services/logger.php/Foomo.Services.RPC/serve";

		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function LoggerProxy(endPoint:String=null)
		{
			if (endPoint == null) endPoint = defaultEndPoint;
			super(endPoint, CLASS_NAME, VERSION);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public methods
		//-----------------------------------------------------------------------------------------

		/**
		 *
		 */
		public function log(clientId:String, report:Report):LogCall
		{
			return zugspitze_internal::sendMethodCall(new LogCall(clientId, report));
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public static methods
		//-----------------------------------------------------------------------------------------

		/**
		 *
		 */
		public static function get defaultInstance():LoggerProxy
		{
			if (!_instance) _instance = new LoggerProxy(defaultEndPoint);
			return _instance;
		}
	}
}
