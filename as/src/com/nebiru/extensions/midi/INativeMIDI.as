/**
 * Copyright (c) 2012, Nebiru Software
 * All rights reserved.
 *
 * Redistribution and use of this source code is strictly forbidden without
 * specific prior written permission.
 *
 * $Id: INativeMIDI.as 675 2012-10-22 02:33:35Z dkadrioski $
 */

package com.nebiru.extensions.midi{
	public interface INativeMIDI{
		//----------------------------------------------------------------------
		function getInterfaceList() : String;
		//----------------------------------------------------------------------
		function isSupported() : Boolean;
		//----------------------------------------------------------------------
	};
}
