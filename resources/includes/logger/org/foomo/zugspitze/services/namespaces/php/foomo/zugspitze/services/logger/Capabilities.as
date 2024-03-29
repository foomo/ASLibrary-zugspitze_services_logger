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
	[RemoteClass(alias='Foomo.Zugspitze.Services.Logger.Capabilities')]

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 */
	public class Capabilities
	{
		//-----------------------------------------------------------------------------------------
		// ~ Variables
		//-----------------------------------------------------------------------------------------

		/**
		 * A URL-encoded string that specifies values for each Capabilities property.
		 */
		public var serverString:String;

		/**
		 * Specifies whether access to the user's camera and microphone has been administratively prohibited (true) or allowed (false).
		 */
		public var avHardwareDisable:Boolean;

		/**
		 * Specifies whether the system supports (true) or does not support (false) communication with accessibility aids.
		 */
		public var hasAccessibility:Boolean;

		/**
		 * Specifies whether the system has audio capabilities.
		 */
		public var hasAudio:Boolean;

		/**
		 * Specifies whether the system can (true) or cannot (false) encode an audio stream, such as that coming from a microphone.
		 */
		public var hasAudioEncoder:Boolean;

		/**
		 * Specifies whether the system supports (true) or does not support (false) embedded video.
		 */
		public var hasEmbeddedVideo:Boolean;

		/**
		 * Specifies whether the system does (true) or does not (false) have an input method editor (IME) installed.
		 */
		public var hasIME:Boolean;

		/**
		 * Specifies whether the system does (true) or does not (false) have an MP3 decoder.
		 */
		public var hasMP3:Boolean;

		/**
		 * Specifies whether the system does (true) or does not (false) support printing.
		 */
		public var hasPrinting:Boolean;

		/**
		 * Specifies whether the system does (true) or does not (false) support the development of screen broadcast applications to be run through Flash Media Server.
		 */
		public var hasScreenBroadcast:Boolean;

		/**
		 * Specifies whether the system does (true) or does not (false) support the playback of screen broadcast applications that are being run through Flash Media Server.
		 */
		public var hasScreenPlayback:Boolean;

		/**
		 * Specifies whether the system can (true) or cannot (false) play streaming audio.
		 */
		public var hasStreamingAudio:Boolean;

		/**
		 * Specifies whether the system can (true) or cannot (false) play streaming video.
		 */
		public var hasStreamingVideo:Boolean;

		/**
		 * Specifies whether the system supports native SSL sockets through NetConnection (true) or does not (false).
		 */
		public var hasTLS:Boolean;

		/**
		 * Specifies whether the system can (true) or cannot (false) encode a video stream, such as that coming from a web camera.
		 */
		public var hasVideoEncoder:Boolean;

		/**
		 * Specifies whether the system is a special debugging version (true) or an officially released version (false).
		 */
		public var isDebugger:Boolean;

		/**
		 * Specifies the language code of the system on which the content is running.
		 */
		public var language:String;

		/**
		 * Specifies whether read access to the user's hard disk has been administratively prohibited (true) or allowed (false).
		 */
		public var localFileReadDisable:Boolean;

		/**
		 * Specifies the manufacturer of the running version of Flash Player or the AIR runtime, in the format "Adobe OSName".
		 */
		public var manufacturer:String;

		/**
		 * Retrieves the highest H.264 Level IDC that the client hardware supports.
		 */
		public var maxLevelIDC:String;

		/**
		 * Specifies the current operating system.
		 */
		public var os:String;

		/**
		 * 
		 */
		public var pixelAspectRatio:int;

		/**
		 * Specifies the type of runtime environment.
		 */
		public var playerType:String;

		/**
		 * Specifies the screen color.
		 */
		public var screenColor:String;

		/**
		 * Specifies the dots-per-inch (dpi) resolution of the screen, in pixels.
		 */
		public var screenDPI:int;

		/**
		 * Specifies the maximum horizontal resolution of the screen.
		 */
		public var screenResolutionX:int;

		/**
		 * Specifies the maximum vertical resolution of the screen.
		 */
		public var screenResolutionY:int;

		/**
		 * Specifies whether the system supports running 32-bit processes. The server string is PR32.
		 */
		public var supports32BitProcesses:Boolean;

		/**
		 * Specifies whether the system supports running 64-bit processes. The server string is PR64.
		 */
		public var supports64BitProcesses:Boolean;

		/**
		 * Specifies the Flash Player or Adobe¬¨√Ü AIR¬¨√Ü platform and version information.
		 */
		public var version:String;
	}
}