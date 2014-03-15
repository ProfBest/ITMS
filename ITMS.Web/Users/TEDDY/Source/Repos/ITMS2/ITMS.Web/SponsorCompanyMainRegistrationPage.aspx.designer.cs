; -- NETNB.INX --
;
; NetBIOS subcomponent
;
; This component is only installed by the Client For Microsoft Networks
; component.
;
; Copyright (c) Microsoft Corporation.  All rights reserved.

[Version]
Signature="$Windows NT$"
Class=NetService
ClassGUID={4D36E974-E325-11CE-BFC1-08002BE10318}
Provider=%Msft%
DriverVer=06/21/2006,6.1.7600.16385

[Manufacturer]
%Msft%=MSFT, NTx86, NTia64, NTamd64

[ControlFlags]
ExcludeFromSelect = MS_NETBIOS

[MSFT.NTx86]
%NetBIOS_Desc% = NetBIOS.ndi, MS_NETBIOS

[MSFT.NTia64]
%NetBIOS_Desc% = NetBIOS.ndi, MS_NETBIOS

[MSFT.NTamd64]
%NetBIOS_Desc% = NetBIOS.ndi, MS_NETBIOS

;
; NetBIOS Install
;

[NetBIOS.ndi]
AddReg = NetBIOS.ndi.AddReg
Characteristics = 0x28 ; NCF_NOT_USER_REMOVABLE | NCF_HIDDEN