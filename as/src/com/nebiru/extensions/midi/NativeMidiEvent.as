/**
 * Copyright (c) 2012, Nebiru Software
 * All rights reserved.
 * 
 * Redistribution and use of this source code is strictly forbidden without
 * specific prior written permission.
 * 
 * $Id: NativeMidiEvent.as 571 2012-03-11 21:12:08Z dkadrioski $
 */

package com.nebiru.extensions.midi{
	import flash.events.Event;
	
	public class NativeMidiEvent extends Event{
		static public const INTERFACE_LIST       :String = "INTERFACE_LIST";
		static public const INTERFACE_CONNECT    :String = "INTERFACE_CONNECT";
		static public const INTERFACE_DISCONNECT :String = "INTERFACE_DISCONNECT";
		static public const NOTE_ON              :String = "NOTE_ON";
		static public const NOTE_OFF             :String = "NOTE_OFF";
		static public const SYSEX                :String = "SYSEX";
		static public const CONTROL_CHANGE       :String = "CONTROL_CHANGE";
		static public const CHANNEL_PRESSURE     :String = "CHANNEL_PRESSURE";
		static public const PITCH_BEND           :String = "PITCH_BEND";
		static public const PROGRAM_CHANGE       :String = "PROGRAM_CHANGE";
		
		public function NativeMidiEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		};
	};
}
