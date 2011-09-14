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
package org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger
{
			import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Screenshot;	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Capabilities;	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.System;	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Log;
	[Bindable]
	[RemoteClass(alias='Foomo.Zugspitze.Services.Logger.Report')]

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 */
	public class Report
	{
		//-----------------------------------------------------------------------------------------
		// ~ Variables
		//-----------------------------------------------------------------------------------------

		/**
		 * Set if included in logging setttings | DD-MM-YYY
		 */
		public var date:String;

		/**
		 * Set if included in logging setttings | HH:MM:SS
		 */
		public var time:String;

		/**
		 * Set if included in logging setttings
		 */
		public var screenshot:Screenshot;

		/**
		 * Set if included in logging setttings
		 */
		public var capabilities:Capabilities;

		/**
		 * System data
		 */
		public var system:System;

		/**
		 * 
		 */
		public var log:Log;
	}
}