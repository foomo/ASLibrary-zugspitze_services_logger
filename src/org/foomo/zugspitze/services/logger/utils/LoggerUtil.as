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
package org.foomo.zugspitze.services.logger.utils
{
	import flash.system.Capabilities;
	import flash.utils.getTimer;

	import org.foomo.utils.StringUtil;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Capabilities;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Report;
	import org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.System;

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
	public class LoggerUtil
	{
		//-----------------------------------------------------------------------------------------
		// ~ Public static methods
		//-----------------------------------------------------------------------------------------

		/**
		 * @param category
		 * @param logLevel
		 * @param includeStackTrace
		 * @param includeSystem
		 * @param includeCapabilities
		 * @return The basic report
		 */
		public static function getReport(includeSystem:Boolean=true, includeCapabilities:Boolean=true):Report
		{
			var d:Date = new Date();
			var report:Report = new Report;

			// date
			report.date = StringUtil.pad(d.getDate(), 2, '0') + '-' + StringUtil.pad((d.getMonth() + 1), 2, '0') + '-' + StringUtil.pad(d.getFullYear(), 4, '0');

			// time
			report.time = StringUtil.pad(d.getHours(), 2, '0') + ":" + StringUtil.pad(d.getMinutes(), 2, '0') + ":" + StringUtil.pad(d.getSeconds(), 2, '0');

			// total memory
			if (includeSystem) report.system = LoggerUtil.getSystem();

			// capabilities
			if (includeCapabilities) report.capabilities = LoggerUtil.getCapabilitie();

			return report;
		}

		/**
		 * @return System value object
		 */
		public static function getSystem():org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.System
		{
			var system:org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.System = new org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.System;
			system.uptime = getTimer();
			system.freeMemory = flash.system.System.freeMemory;
			system.totalMemory = flash.system.System.totalMemory;
			system.privateMemory = flash.system.System.privateMemory;
			return system;
		}

		/**
		 * @return Capabilities value object
		 */
		public static function getCapabilitie():org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Capabilities
		{
			var capabilities:org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Capabilities = new org.foomo.zugspitze.services.namespaces.php.foomo.zugspitze.services.logger.Capabilities;
			capabilities.avHardwareDisable = flash.system.Capabilities.avHardwareDisable;
			capabilities.hasAccessibility = flash.system.Capabilities.hasAccessibility;
			capabilities.hasAudio = flash.system.Capabilities.hasAudio;
			capabilities.hasAudioEncoder = flash.system.Capabilities.hasAudioEncoder;
			capabilities.hasEmbeddedVideo = flash.system.Capabilities.hasEmbeddedVideo;
			capabilities.hasIME = flash.system.Capabilities.hasIME;
			capabilities.hasMP3 = flash.system.Capabilities.hasMP3;
			capabilities.hasPrinting = flash.system.Capabilities.hasPrinting;
			capabilities.hasScreenBroadcast = flash.system.Capabilities.hasScreenBroadcast;
			capabilities.hasScreenPlayback = flash.system.Capabilities.hasScreenPlayback;
			capabilities.hasStreamingAudio = flash.system.Capabilities.hasStreamingAudio;
			capabilities.hasStreamingVideo = flash.system.Capabilities.hasStreamingVideo;
			capabilities.hasTLS = flash.system.Capabilities.hasTLS;
			capabilities.hasVideoEncoder = flash.system.Capabilities.hasVideoEncoder;
			capabilities.isDebugger = flash.system.Capabilities.isDebugger;
			capabilities.language = flash.system.Capabilities.language;
			capabilities.localFileReadDisable = flash.system.Capabilities.localFileReadDisable;
			capabilities.manufacturer = flash.system.Capabilities.manufacturer;
			capabilities.maxLevelIDC = flash.system.Capabilities.maxLevelIDC;
			capabilities.os = flash.system.Capabilities.os;
			capabilities.pixelAspectRatio = flash.system.Capabilities.pixelAspectRatio;
			capabilities.playerType = flash.system.Capabilities.playerType;
			capabilities.screenColor = flash.system.Capabilities.screenColor;
			capabilities.screenDPI = flash.system.Capabilities.screenDPI;
			capabilities.screenResolutionX = flash.system.Capabilities.screenResolutionX;
			capabilities.screenResolutionY = flash.system.Capabilities.screenResolutionY;
			capabilities.serverString = flash.system.Capabilities.serverString;
			capabilities.supports32BitProcesses = flash.system.Capabilities.supports32BitProcesses;
			capabilities.supports64BitProcesses = flash.system.Capabilities.supports64BitProcesses;
			capabilities.version = flash.system.Capabilities.version;
			return capabilities;
		}
	}
}