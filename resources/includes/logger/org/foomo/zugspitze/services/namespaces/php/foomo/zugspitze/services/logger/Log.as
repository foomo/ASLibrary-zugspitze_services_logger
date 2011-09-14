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
				
	[Bindable]
	[RemoteClass(alias='Foomo.Zugspitze.Services.Logger.Log')]

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 */
	public class Log
	{
		//-----------------------------------------------------------------------------------------
		// ~ Constants
		//-----------------------------------------------------------------------------------------

		public static const LEVEL_FATAL:int = 1000;
		public static const LEVEL_ERROR:int = 8;
		public static const LEVEL_WARN:int = 8;
		public static const LEVEL_INFO:int = 4;
		public static const LEVEL_DEBUG:int = 2;
		public static const LEVEL_ALL:int = 0;

		//-----------------------------------------------------------------------------------------
		// ~ Variables
		//-----------------------------------------------------------------------------------------

		/**
		 * Set if included in logging setttings | LEVEL_
		 */
		public var level:int;

		/**
		 * Human readable level
		 */
		public var levelName:String;

		/**
		 * Set if included in logging setttings
		 */
		public var category:String;

		/**
		 * Message
		 */
		public var message:String;
	}
}