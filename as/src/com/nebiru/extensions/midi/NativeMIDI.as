/**
 * Copyright (c) 2012, Nebiru Software
 * All rights reserved.
 *
 * Redistribution and use of this source code is strictly forbidden without
 * specific prior written permission.
 *
 * $Id: NativeMIDI.as 827 2015-04-05 04:28:13Z dkadrioski $
 */

package com.nebiru.extensions.midi{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.StatusEvent;
	import flash.external.ExtensionContext;

	public class NativeMIDI extends EventDispatcher implements INativeMIDI{
		private static const EXTENSION_ID : String = "com.nebiru.extensions.midi.NativeMIDI";

		private var context : ExtensionContext;
		//----------------------------------------------------------------------
		public function NativeMIDI(target:IEventDispatcher=null){
			super( target );

			context = ExtensionContext.createExtensionContext( EXTENSION_ID, null );

			context.addEventListener( StatusEvent.STATUS, handleContextStatusEvent );
		};
		//----------------------------------------------------------------------
		public function dispose():void{
			if (!context){
				trace("[NativeMIDI] Error.  ANE Already in a disposed or failed state...");
				return;
			}
			trace("[NativeMIDI] Unloading ANE...");

			context.removeEventListener( StatusEvent.STATUS, handleContextStatusEvent );
			//context.dispose();
		};
		//----------------------------------------------------------------------
		public function isSupported():Boolean{
			return context.call( "isSupported" );
		};
		//----------------------------------------------------------------------
		public function getInterfaceList():String{
			return context.call( "getInterfaceList" ) as String;
		};
		//----------------------------------------------------------------------
		public function connectMidiIn(idx:uint):Boolean{
			return context.call( "connectMidiIn", idx );
		};
		//----------------------------------------------------------------------
		public function connectMidiOut(idx:uint):Boolean{
			return context.call( "connectMidiOut", idx );
		};
		//----------------------------------------------------------------------
		public function disconnectMidiIn():Boolean{
			return context.call( "disconnectMidiIn" );
		};
		//----------------------------------------------------------------------
		public function disconnectMidiOut():Boolean{
			return context.call( "disconnectMidiOut" );
		};
		//----------------------------------------------------------------------
		public function transmitSysEx(data:Array):Boolean{
			return context.call( "transmitSysEx", data );
		};
		//----------------------------------------------------------------------
		public function transmitMessage(data:uint):Boolean{
			return context.call( "transmitMessage", data );
		};
		//----------------------------------------------------------------------
		private function handleContextStatusEvent( event : StatusEvent ) : void{
			// Just re-raise whatever we receive.
			dispatchEvent( new StatusEvent( "nativeStatus", false, false, event.code, event.level ) );
		};
		//----------------------------------------------------------------------
	};
}
