<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
	<Item Name="Targets" Type="Target Folder">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Item Name="NI-PXI-Top" Type="RT PXI Chassis">
			<Property Name="alias.name" Type="Str">NI-PXI-Top</Property>
			<Property Name="alias.value" Type="Str">193.0.0.2</Property>
			<Property Name="CCSymbols" Type="Str">OS,PharLap;CPU,x86;TARGET_TYPE,RT;</Property>
			<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
			<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
			<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
			<Property Name="host.TargetCPUID" Type="UInt">3</Property>
			<Property Name="host.TargetOSID" Type="UInt">15</Property>
			<Property Name="target.cleanupVisa" Type="Bool">false</Property>
			<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
			<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
			<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
			<Property Name="target.IOScan.Faults" Type="Str"></Property>
			<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
			<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
			<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
			<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
			<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
			<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
			<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
			<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
			<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
			<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
			<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
			<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
			<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
			<Property Name="target.RTTarget.VIPath" Type="Path">/c/ni-rt/startup</Property>
			<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
			<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
			<Property Name="target.server.tcp.access" Type="Str">+*</Property>
			<Property Name="target.server.tcp.enabled" Type="Bool">true</Property>
			<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
			<Property Name="target.server.tcp.port" Type="Int">3363</Property>
			<Property Name="target.server.tcp.serviceName" Type="Str"></Property>
			<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
			<Property Name="target.server.vi.access" Type="Str">+*</Property>
			<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
			<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
			<Property Name="target.server.viscripting.showScriptingOperationsInContextHelp" Type="Bool">true</Property>
			<Property Name="target.server.viscripting.showScriptingOperationsInEditor" Type="Bool">true</Property>
			<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
			<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
			<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
			<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
			<Property Name="target.WebServer.Port" Type="Int">80</Property>
			<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
			<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
			<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
			<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
			<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
			<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
			<Item Name="Abort-plant.vi" Type="VI" URL="../Abort-plant.vi"/>
			<Item Name="Plant1.vi" Type="VI" URL="../Plant1.vi"/>
			<Item Name="Plant1_input" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str"></Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN1</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT1_INPUT.KX</Property>
				<Property Name="session.master_disabled" Type="UInt">2</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">0</Property>
				<Property Name="session.name" Type="Str">Plant1_input</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Plant1_state" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str">Transmitting the state of plant 1 over the CAN network</Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN1</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT1_STATE.X1,PLANT1_STATE.X2</Property>
				<Property Name="session.master_disabled" Type="UInt">2</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">3</Property>
				<Property Name="session.name" Type="Str">Plant1_state</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Run-plant.vi" Type="VI" URL="../Run-plant.vi"/>
			<Item Name="Test" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str"></Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN1</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT1_TRIG.TRIG</Property>
				<Property Name="session.master_disabled" Type="UInt">0</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">0</Property>
				<Property Name="session.name" Type="Str">Test</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Dependencies" Type="Dependencies">
				<Item Name="vi.lib" Type="Folder">
					<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
					<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
					<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
					<Item Name="Clear Timing Source.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/Clear Timing Source.vi"/>
					<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
					<Item Name="Create Timing Source.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/Create Timing Source.vi"/>
					<Item Name="Create_1kHz_TSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/_suppVIs/Create_1kHz_TSource.vi"/>
					<Item Name="Create_1MHz_TSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/_suppVIs/Create_1MHz_TSource.vi"/>
					<Item Name="Create_SoftwareTrigger_TSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/_suppVIs/Create_SoftwareTrigger_TSource.vi"/>
					<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
					<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
					<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
					<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
					<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
					<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
					<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
					<Item Name="Fire Software-Triggered Timing Source.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/Fire Software-Triggered Timing Source.vi"/>
					<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
					<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
					<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
					<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
					<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
					<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
					<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
					<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
					<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
					<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
					<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
					<Item Name="NI_MIT.lvlib" Type="Library" URL="/&lt;vilib&gt;/Model Interface Toolkit/NI_MIT.lvlib"/>
					<Item Name="NIVeriStand_MdlWrap.dll" Type="Document" URL="/&lt;vilib&gt;/Model Interface Toolkit/data/NIVeriStand_MdlWrap.dll"/>
					<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
					<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
					<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
					<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
					<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
					<Item Name="Stop Timed Structure.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/Stop Timed Structure.vi"/>
					<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
					<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
					<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
					<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
					<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
					<Item Name="XNET CAN Comm State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Comm State.ctl"/>
					<Item Name="XNET CAN Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Comm.ctl"/>
					<Item Name="XNET CAN Last Err.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Last Err.ctl"/>
					<Item Name="XNET Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Fill In Error Info.vi"/>
					<Item Name="XNET FlexRay Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay Comm.ctl"/>
					<Item Name="XNET FlexRay POC State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay POC State.ctl"/>
					<Item Name="XNET FlexRay Stats.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay Stats.ctl"/>
					<Item Name="XNET Frame CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame CAN.ctl"/>
					<Item Name="XNET Frame FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame FlexRay.ctl"/>
					<Item Name="XNET Frame LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame LIN.ctl"/>
					<Item Name="XNET Frame Type CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type CAN.ctl"/>
					<Item Name="XNET Frame Type FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type FlexRay.ctl"/>
					<Item Name="XNET Frame Type LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type LIN.ctl"/>
					<Item Name="XNET J1939 Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET J1939 Comm.ctl"/>
					<Item Name="XNET LIN Comm State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Comm State.ctl"/>
					<Item Name="XNET LIN Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Comm.ctl"/>
					<Item Name="XNET LIN Diag Schedule Type.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Diag Schedule Type.ctl"/>
					<Item Name="XNET LIN Last Err.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Last Err.ctl"/>
					<Item Name="XNET Read (Frame CAN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame CAN).vi"/>
					<Item Name="XNET Read (Frame FlexRay).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame FlexRay).vi"/>
					<Item Name="XNET Read (Frame LIN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame LIN).vi"/>
					<Item Name="XNET Read (Frame Raw).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame Raw).vi"/>
					<Item Name="XNET Read (Signal Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal Single-point).vi"/>
					<Item Name="XNET Read (Signal Waveform) .vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal Waveform) .vi"/>
					<Item Name="XNET Read (Signal XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal XY).vi"/>
					<Item Name="XNET Read (State CAN Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State CAN Comm).vi"/>
					<Item Name="XNET Read (State FlexRay Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Comm).vi"/>
					<Item Name="XNET Read (State FlexRay Cycle Macrotick).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Cycle Macrotick).vi"/>
					<Item Name="XNET Read (State FlexRay Stats).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Stats).vi"/>
					<Item Name="XNET Read (State J1939 Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State J1939 Comm).vi"/>
					<Item Name="XNET Read (State LIN Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State LIN Comm).vi"/>
					<Item Name="XNET Read (State Session Info).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Session Info).vi"/>
					<Item Name="XNET Read (State Time Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Comm).vi"/>
					<Item Name="XNET Read (State Time Current).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Current).vi"/>
					<Item Name="XNET Read (State Time Start).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Start).vi"/>
					<Item Name="XNET Read.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read.vi"/>
					<Item Name="XNET Session Info State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Session Info State.ctl"/>
					<Item Name="XNET Write (Frame CAN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame CAN).vi"/>
					<Item Name="XNET Write (Frame FlexRay).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame FlexRay).vi"/>
					<Item Name="XNET Write (Frame LIN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame LIN).vi"/>
					<Item Name="XNET Write (Frame Raw).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame Raw).vi"/>
					<Item Name="XNET Write (Signal Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal Single-point).vi"/>
					<Item Name="XNET Write (Signal Waveform) .vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal Waveform) .vi"/>
					<Item Name="XNET Write (Signal XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal XY).vi"/>
					<Item Name="XNET Write (State FlexRay Symbol).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State FlexRay Symbol).vi"/>
					<Item Name="XNET Write (State LIN Diagnostic Schedule Change).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State LIN Diagnostic Schedule Change).vi"/>
					<Item Name="XNET Write (State LIN Schedule Change).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State LIN Schedule Change).vi"/>
					<Item Name="XNET Write.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write.vi"/>
				</Item>
				<Item Name="lvalarms.dll" Type="Document" URL="lvalarms.dll">
					<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
				</Item>
				<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
				<Item Name="lvuste.dll" Type="Document" URL="lvuste.dll">
					<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
				</Item>
				<Item Name="nixlvapi.dll" Type="Document" URL="nixlvapi.dll">
					<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
				</Item>
				<Item Name="Tolerance.ctl" Type="VI" URL="../Tolerance.ctl"/>
				<Item Name="Transmit-state.vi" Type="VI" URL="../Transmit-state.vi"/>
			</Item>
			<Item Name="Build Specifications" Type="Build"/>
		</Item>
		<Item Name="NI-PXI-Middle" Type="RT PXI Chassis">
			<Property Name="alias.name" Type="Str">NI-PXI-Middle</Property>
			<Property Name="alias.value" Type="Str">193.0.0.5</Property>
			<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,PharLap;CPU,x86;</Property>
			<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
			<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
			<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
			<Property Name="host.TargetCPUID" Type="UInt">3</Property>
			<Property Name="host.TargetOSID" Type="UInt">15</Property>
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Property Name="target.cleanupVisa" Type="Bool">false</Property>
			<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
			<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
			<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
			<Property Name="target.IOScan.Faults" Type="Str"></Property>
			<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
			<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
			<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
			<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
			<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
			<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
			<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
			<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
			<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
			<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
			<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
			<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
			<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
			<Property Name="target.RTTarget.VIPath" Type="Path">/c/ni-rt/startup</Property>
			<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
			<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
			<Property Name="target.server.tcp.access" Type="Str">+*</Property>
			<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
			<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
			<Property Name="target.server.tcp.port" Type="Int">3363</Property>
			<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
			<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
			<Property Name="target.server.vi.access" Type="Str">+*</Property>
			<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
			<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
			<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
			<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
			<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
			<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
			<Property Name="target.WebServer.Port" Type="Int">80</Property>
			<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
			<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
			<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
			<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
			<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
			<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
			<Item Name="Region-determination" Type="Folder">
				<Item Name="Region-det-diagnostics.vi" Type="VI" URL="../Region-det-diagnostics.vi"/>
				<Item Name="Region-det-generate-Q-mat.vi" Type="VI" URL="../Region-det-generate-Q-mat.vi"/>
				<Item Name="Region-det-rel-queue.vi" Type="VI" URL="../Region-det-rel-queue.vi"/>
				<Item Name="Region-det-init-queue.vi" Type="VI" URL="../Region-det-init-queue.vi"/>
				<Item Name="Region-det-ins-region-queue.vi" Type="VI" URL="../Region-det-ins-region-queue.vi"/>
				<Item Name="Region-det-ins-state-queue.vi" Type="VI" URL="../Region-det-ins-state-queue.vi"/>
				<Item Name="Region-det-main.vi" Type="VI" URL="../Region-det-main.vi"/>
				<Item Name="Region-det-Q-gen-util.vi" Type="VI" URL="../Region-det-Q-gen-util.vi"/>
			</Item>
			<Item Name="Data-logging" Type="Folder">
				<Item Name="Data-log-init.vi" Type="VI" URL="../Data-log-init.vi"/>
				<Item Name="Data-log-ins-data.vi" Type="VI" URL="../Data-log-ins-data.vi"/>
				<Item Name="Data-log-write-file.vi" Type="VI" URL="../Data-log-write-file.vi"/>
				<Item Name="Data-log-trigger-data.vi" Type="VI" URL="../Data-log-trigger-data.vi"/>
			</Item>
			<Item Name="Strategy-parsing" Type="Folder">
				<Item Name="Strat-parse-load.vi" Type="VI" URL="../Strat-parse-load.vi"/>
				<Item Name="Strat-parse-gen-strat-mat.vi" Type="VI" URL="../Strat-parse-gen-strat-mat.vi"/>
				<Item Name="Strat-parse-get-regional-cluster.vi" Type="VI" URL="../Strat-parse-get-regional-cluster.vi"/>
			</Item>
			<Item Name="Main" Type="Folder">
				<Item Name="Scheduler-uppaal.vi" Type="VI" URL="../Scheduler-uppaal.vi"/>
				<Item Name="Main-loop.vi" Type="VI" URL="../Main-loop.vi"/>
				<Item Name="Read-state.vi" Type="VI" URL="../Read-state.vi"/>
				<Item Name="Trigger.vi" Type="VI" URL="../Trigger.vi"/>
				<Item Name="Handle Clocks.vi" Type="VI" URL="../Handle Clocks.vi"/>
			</Item>
			<Item Name="Plant-admin" Type="Folder">
				<Item Name="Launch-plant.vi" Type="VI" URL="../Launch-plant.vi"/>
				<Item Name="Stop-plant.vi" Type="VI" URL="../Stop-plant.vi"/>
				<Item Name="Run-plant.vi" Type="VI" URL="../Run-plant.vi"/>
				<Item Name="Abort-plant.vi" Type="VI" URL="../Abort-plant.vi"/>
			</Item>
			<Item Name="Plant1_Input" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str">Input to be provided to plant 1 (K*x)</Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN1</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT1_INPUT.KX</Property>
				<Property Name="session.master_disabled" Type="UInt">2</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">3</Property>
				<Property Name="session.name" Type="Str">Plant1_Input</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Plant1_state" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str">Input to the controller for plant 1</Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN1</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT1_STATE.X1,PLANT1_STATE.X2</Property>
				<Property Name="session.master_disabled" Type="UInt">2</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">0</Property>
				<Property Name="session.name" Type="Str">Plant1_state</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Plant2_Input" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str">Input to be provided to plant 1 (K*x)</Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN2</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT2_INPUT.KX</Property>
				<Property Name="session.master_disabled" Type="UInt">2</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">3</Property>
				<Property Name="session.name" Type="Str">Plant2_Input</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Plant2_state" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str">Input to the controller for plant 1</Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN2</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT2_STATE.X1,PLANT2_STATE.X2</Property>
				<Property Name="session.master_disabled" Type="UInt">2</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">0</Property>
				<Property Name="session.name" Type="Str">Plant2_state</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Alternate-triggering-test.vi" Type="VI" URL="../Alternate-triggering-test.vi"/>
			<Item Name="CL-close-CAN-test.vi" Type="VI" URL="../CL-close-CAN-test.vi"/>
			<Item Name="Main-loop-with-queues.vi" Type="VI" URL="../Main-loop-with-queues.vi"/>
			<Item Name="Read-held-input.vi" Type="VI" URL="../Read-held-input.vi"/>
			<Item Name="Scratch.vi" Type="VI" URL="../Scratch.vi"/>
			<Item Name="Recv_test" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str"></Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN1</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT1_TRIG.TRIG</Property>
				<Property Name="session.master_disabled" Type="UInt">2</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">3</Property>
				<Property Name="session.name" Type="Str">Recv_test</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Scheduler-periodic.vi" Type="VI" URL="../Scheduler-periodic.vi"/>
			<Item Name="Main-loop-backup.vi" Type="VI" URL="../Main-loop-backup.vi"/>
			<Item Name="Dependencies" Type="Dependencies">
				<Item Name="vi.lib" Type="Folder">
					<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
					<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
					<Item Name="XNET CAN Comm State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Comm State.ctl"/>
					<Item Name="XNET CAN Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Comm.ctl"/>
					<Item Name="XNET CAN Last Err.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Last Err.ctl"/>
					<Item Name="XNET Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Fill In Error Info.vi"/>
					<Item Name="XNET FlexRay Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay Comm.ctl"/>
					<Item Name="XNET FlexRay POC State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay POC State.ctl"/>
					<Item Name="XNET FlexRay Stats.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay Stats.ctl"/>
					<Item Name="XNET Frame CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame CAN.ctl"/>
					<Item Name="XNET Frame FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame FlexRay.ctl"/>
					<Item Name="XNET Frame LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame LIN.ctl"/>
					<Item Name="XNET Frame Type CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type CAN.ctl"/>
					<Item Name="XNET Frame Type FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type FlexRay.ctl"/>
					<Item Name="XNET Frame Type LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type LIN.ctl"/>
					<Item Name="XNET J1939 Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET J1939 Comm.ctl"/>
					<Item Name="XNET LIN Comm State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Comm State.ctl"/>
					<Item Name="XNET LIN Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Comm.ctl"/>
					<Item Name="XNET LIN Diag Schedule Type.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Diag Schedule Type.ctl"/>
					<Item Name="XNET LIN Last Err.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Last Err.ctl"/>
					<Item Name="XNET Read (Frame CAN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame CAN).vi"/>
					<Item Name="XNET Read (Frame FlexRay).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame FlexRay).vi"/>
					<Item Name="XNET Read (Frame LIN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame LIN).vi"/>
					<Item Name="XNET Read (Frame Raw).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame Raw).vi"/>
					<Item Name="XNET Read (Signal Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal Single-point).vi"/>
					<Item Name="XNET Read (Signal Waveform) .vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal Waveform) .vi"/>
					<Item Name="XNET Read (Signal XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal XY).vi"/>
					<Item Name="XNET Read (State CAN Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State CAN Comm).vi"/>
					<Item Name="XNET Read (State FlexRay Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Comm).vi"/>
					<Item Name="XNET Read (State FlexRay Cycle Macrotick).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Cycle Macrotick).vi"/>
					<Item Name="XNET Read (State FlexRay Stats).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Stats).vi"/>
					<Item Name="XNET Read (State J1939 Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State J1939 Comm).vi"/>
					<Item Name="XNET Read (State LIN Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State LIN Comm).vi"/>
					<Item Name="XNET Read (State Session Info).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Session Info).vi"/>
					<Item Name="XNET Read (State Time Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Comm).vi"/>
					<Item Name="XNET Read (State Time Current).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Current).vi"/>
					<Item Name="XNET Read (State Time Start).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Start).vi"/>
					<Item Name="XNET Read.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read.vi"/>
					<Item Name="XNET Session Info State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Session Info State.ctl"/>
					<Item Name="XNET Write (Frame CAN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame CAN).vi"/>
					<Item Name="XNET Write (Frame FlexRay).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame FlexRay).vi"/>
					<Item Name="XNET Write (Frame LIN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame LIN).vi"/>
					<Item Name="XNET Write (Frame Raw).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame Raw).vi"/>
					<Item Name="XNET Write (Signal Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal Single-point).vi"/>
					<Item Name="XNET Write (Signal Waveform) .vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal Waveform) .vi"/>
					<Item Name="XNET Write (Signal XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal XY).vi"/>
					<Item Name="XNET Write (State FlexRay Symbol).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State FlexRay Symbol).vi"/>
					<Item Name="XNET Write (State LIN Diagnostic Schedule Change).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State LIN Diagnostic Schedule Change).vi"/>
					<Item Name="XNET Write (State LIN Schedule Change).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State LIN Schedule Change).vi"/>
					<Item Name="XNET Write.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write.vi"/>
					<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
					<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
					<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
					<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
					<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
					<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
					<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				</Item>
				<Item Name="Get_Q_matrices_for_region.vi" Type="VI" URL="../Get_Q_matrices_for_region.vi"/>
				<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
				<Item Name="Multiply-gain.vi" Type="VI" URL="../Multiply-gain.vi"/>
				<Item Name="nixlvapi.dll" Type="Document" URL="nixlvapi.dll">
					<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
				</Item>
				<Item Name="Plant_info.ctl" Type="VI" URL="../Plant_info.ctl"/>
				<Item Name="Plant_state.ctl" Type="VI" URL="../Plant_state.ctl"/>
				<Item Name="Sched_queues.ctl" Type="VI" URL="../Sched_queues.ctl"/>
				<Item Name="Sched_state.ctl" Type="VI" URL="../Sched_state.ctl"/>
				<Item Name="Strategy_regional_set.ctl" Type="VI" URL="../Strategy_regional_set.ctl"/>
				<Item Name="Strategy_regional_cluster.ctl" Type="VI" URL="../Strategy_regional_cluster.ctl"/>
				<Item Name="Plant-data.ctl" Type="VI" URL="../Plant-data.ctl"/>
			</Item>
			<Item Name="Build Specifications" Type="Build"/>
		</Item>
		<Item Name="NI-PXI-Bottom" Type="RT PXI Chassis">
			<Property Name="alias.name" Type="Str">NI-PXI-Bottom</Property>
			<Property Name="alias.value" Type="Str">193.0.0.4</Property>
			<Property Name="CCSymbols" Type="Str">OS,PharLap;CPU,x86;TARGET_TYPE,RT;</Property>
			<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
			<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
			<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
			<Property Name="host.TargetCPUID" Type="UInt">3</Property>
			<Property Name="host.TargetOSID" Type="UInt">15</Property>
			<Property Name="target.cleanupVisa" Type="Bool">false</Property>
			<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
			<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
			<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
			<Property Name="target.IOScan.Faults" Type="Str"></Property>
			<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
			<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
			<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
			<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
			<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
			<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
			<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
			<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
			<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
			<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
			<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
			<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
			<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
			<Property Name="target.RTTarget.VIPath" Type="Path">/c/ni-rt/startup</Property>
			<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
			<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
			<Property Name="target.server.tcp.access" Type="Str">+*</Property>
			<Property Name="target.server.tcp.enabled" Type="Bool">true</Property>
			<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
			<Property Name="target.server.tcp.port" Type="Int">3363</Property>
			<Property Name="target.server.tcp.serviceName" Type="Str"></Property>
			<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
			<Property Name="target.server.vi.access" Type="Str">+*</Property>
			<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
			<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
			<Property Name="target.server.viscripting.showScriptingOperationsInContextHelp" Type="Bool">true</Property>
			<Property Name="target.server.viscripting.showScriptingOperationsInEditor" Type="Bool">true</Property>
			<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
			<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
			<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
			<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
			<Property Name="target.WebServer.Port" Type="Int">80</Property>
			<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
			<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
			<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
			<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
			<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
			<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
			<Item Name="Abort-plant.vi" Type="VI" URL="../Abort-plant.vi"/>
			<Item Name="Plant2.vi" Type="VI" URL="../Plant2.vi"/>
			<Item Name="Plant2_input" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str"></Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN1</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT2_INPUT.KX</Property>
				<Property Name="session.master_disabled" Type="UInt">2</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">0</Property>
				<Property Name="session.name" Type="Str">Plant2_input</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Plant2_state" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str"></Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN1</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT2_STATE.X1,PLANT2_STATE.X2</Property>
				<Property Name="session.master_disabled" Type="UInt">2</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">3</Property>
				<Property Name="session.name" Type="Str">Plant2_state</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Plant2_trig" Type="NI-XNET Session">
				<Property Name="session.alias" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.cluster" Type="Str">ANIKET_THESIS</Property>
				<Property Name="session.coldstart_disabled" Type="UInt">2</Property>
				<Property Name="session.coldstart_value" Type="UInt">0</Property>
				<Property Name="session.coldstart_visible" Type="UInt">0</Property>
				<Property Name="session.comment" Type="Str"></Property>
				<Property Name="session.create" Type="UInt">0</Property>
				<Property Name="session.defaultschedule_disabled" Type="UInt">2</Property>
				<Property Name="session.defaultschedule_value" Type="Str"></Property>
				<Property Name="session.defaultschedule_visible" Type="UInt">0</Property>
				<Property Name="session.displaypdus" Type="UInt">0</Property>
				<Property Name="session.interface" Type="Str">CAN1</Property>
				<Property Name="session.keyslot" Type="UInt">0</Property>
				<Property Name="session.list" Type="Str">PLANT2_TRIG.TRIG</Property>
				<Property Name="session.master_disabled" Type="UInt">2</Property>
				<Property Name="session.master_value" Type="UInt">0</Property>
				<Property Name="session.master_visible" Type="UInt">0</Property>
				<Property Name="session.mode" Type="UInt">0</Property>
				<Property Name="session.name" Type="Str">Plant2_trig</Property>
				<Property Name="session.resample_fraction" Type="UInt">0</Property>
				<Property Name="session.resample_integer" Type="UInt">1000</Property>
				<Property Name="session.startupframe_disabled" Type="UInt">2</Property>
				<Property Name="session.startupframe_value" Type="Str"></Property>
				<Property Name="session.startupframe_visible" Type="UInt">0</Property>
			</Item>
			<Item Name="Run-plant.vi" Type="VI" URL="../Run-plant.vi"/>
			<Item Name="Dependencies" Type="Dependencies">
				<Item Name="vi.lib" Type="Folder">
					<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
					<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
					<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
					<Item Name="Clear Timing Source.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/Clear Timing Source.vi"/>
					<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
					<Item Name="Create Timing Source.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/Create Timing Source.vi"/>
					<Item Name="Create_1kHz_TSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/_suppVIs/Create_1kHz_TSource.vi"/>
					<Item Name="Create_1MHz_TSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/_suppVIs/Create_1MHz_TSource.vi"/>
					<Item Name="Create_SoftwareTrigger_TSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/_suppVIs/Create_SoftwareTrigger_TSource.vi"/>
					<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
					<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
					<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
					<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
					<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
					<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
					<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
					<Item Name="Fire Software-Triggered Timing Source.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/Fire Software-Triggered Timing Source.vi"/>
					<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
					<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
					<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
					<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
					<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
					<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
					<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
					<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
					<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
					<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
					<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
					<Item Name="NI_MIT.lvlib" Type="Library" URL="/&lt;vilib&gt;/Model Interface Toolkit/NI_MIT.lvlib"/>
					<Item Name="NIVeriStand_MdlWrap.dll" Type="Document" URL="/&lt;vilib&gt;/Model Interface Toolkit/data/NIVeriStand_MdlWrap.dll"/>
					<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
					<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
					<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
					<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
					<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
					<Item Name="Stop Timed Structure.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/Stop Timed Structure.vi"/>
					<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
					<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
					<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
					<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
					<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
					<Item Name="XNET CAN Comm State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Comm State.ctl"/>
					<Item Name="XNET CAN Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Comm.ctl"/>
					<Item Name="XNET CAN Last Err.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Last Err.ctl"/>
					<Item Name="XNET Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Fill In Error Info.vi"/>
					<Item Name="XNET FlexRay Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay Comm.ctl"/>
					<Item Name="XNET FlexRay POC State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay POC State.ctl"/>
					<Item Name="XNET FlexRay Stats.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay Stats.ctl"/>
					<Item Name="XNET Frame CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame CAN.ctl"/>
					<Item Name="XNET Frame FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame FlexRay.ctl"/>
					<Item Name="XNET Frame LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame LIN.ctl"/>
					<Item Name="XNET Frame Type CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type CAN.ctl"/>
					<Item Name="XNET Frame Type FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type FlexRay.ctl"/>
					<Item Name="XNET Frame Type LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type LIN.ctl"/>
					<Item Name="XNET J1939 Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET J1939 Comm.ctl"/>
					<Item Name="XNET LIN Comm State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Comm State.ctl"/>
					<Item Name="XNET LIN Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Comm.ctl"/>
					<Item Name="XNET LIN Diag Schedule Type.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Diag Schedule Type.ctl"/>
					<Item Name="XNET LIN Last Err.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Last Err.ctl"/>
					<Item Name="XNET Read (Frame CAN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame CAN).vi"/>
					<Item Name="XNET Read (Frame FlexRay).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame FlexRay).vi"/>
					<Item Name="XNET Read (Frame LIN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame LIN).vi"/>
					<Item Name="XNET Read (Frame Raw).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame Raw).vi"/>
					<Item Name="XNET Read (Signal Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal Single-point).vi"/>
					<Item Name="XNET Read (Signal Waveform) .vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal Waveform) .vi"/>
					<Item Name="XNET Read (Signal XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal XY).vi"/>
					<Item Name="XNET Read (State CAN Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State CAN Comm).vi"/>
					<Item Name="XNET Read (State FlexRay Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Comm).vi"/>
					<Item Name="XNET Read (State FlexRay Cycle Macrotick).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Cycle Macrotick).vi"/>
					<Item Name="XNET Read (State FlexRay Stats).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Stats).vi"/>
					<Item Name="XNET Read (State J1939 Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State J1939 Comm).vi"/>
					<Item Name="XNET Read (State LIN Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State LIN Comm).vi"/>
					<Item Name="XNET Read (State Session Info).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Session Info).vi"/>
					<Item Name="XNET Read (State Time Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Comm).vi"/>
					<Item Name="XNET Read (State Time Current).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Current).vi"/>
					<Item Name="XNET Read (State Time Start).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Start).vi"/>
					<Item Name="XNET Read.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read.vi"/>
					<Item Name="XNET Session Info State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Session Info State.ctl"/>
					<Item Name="XNET Write (Frame CAN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame CAN).vi"/>
					<Item Name="XNET Write (Frame FlexRay).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame FlexRay).vi"/>
					<Item Name="XNET Write (Frame LIN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame LIN).vi"/>
					<Item Name="XNET Write (Frame Raw).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame Raw).vi"/>
					<Item Name="XNET Write (Signal Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal Single-point).vi"/>
					<Item Name="XNET Write (Signal Waveform) .vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal Waveform) .vi"/>
					<Item Name="XNET Write (Signal XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal XY).vi"/>
					<Item Name="XNET Write (State FlexRay Symbol).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State FlexRay Symbol).vi"/>
					<Item Name="XNET Write (State LIN Diagnostic Schedule Change).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State LIN Diagnostic Schedule Change).vi"/>
					<Item Name="XNET Write (State LIN Schedule Change).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State LIN Schedule Change).vi"/>
					<Item Name="XNET Write.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write.vi"/>
				</Item>
				<Item Name="lvalarms.dll" Type="Document" URL="lvalarms.dll">
					<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
				</Item>
				<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
				<Item Name="lvuste.dll" Type="Document" URL="lvuste.dll">
					<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
				</Item>
				<Item Name="nixlvapi.dll" Type="Document" URL="nixlvapi.dll">
					<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
				</Item>
				<Item Name="Tolerance.ctl" Type="VI" URL="../Tolerance.ctl"/>
				<Item Name="Transmit-state.vi" Type="VI" URL="../Transmit-state.vi"/>
			</Item>
			<Item Name="Build Specifications" Type="Build"/>
		</Item>
	</Item>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Typedefs" Type="Folder">
			<Item Name="Plant-data.ctl" Type="VI" URL="../Plant-data.ctl"/>
			<Item Name="Plant_enum.ctl" Type="VI" URL="../Plant_enum.ctl"/>
			<Item Name="Plant_info.ctl" Type="VI" URL="../Plant_info.ctl"/>
			<Item Name="Plant_state.ctl" Type="VI" URL="../Plant_state.ctl"/>
			<Item Name="Sched_queues.ctl" Type="VI" URL="../Sched_queues.ctl"/>
			<Item Name="Sched_state.ctl" Type="VI" URL="../Sched_state.ctl"/>
			<Item Name="Sched_state_queues.ctl" Type="VI" URL="../Sched_state_queues.ctl"/>
			<Item Name="Strategy_regional_cluster.ctl" Type="VI" URL="../Strategy_regional_cluster.ctl"/>
			<Item Name="Strategy_regional_set.ctl" Type="VI" URL="../Strategy_regional_set.ctl"/>
			<Item Name="Tolerance.ctl" Type="VI" URL="../Tolerance.ctl"/>
		</Item>
		<Item Name="Utils" Type="Folder">
			<Item Name="Get_Q_matrices_for_region.vi" Type="VI" URL="../Get_Q_matrices_for_region.vi"/>
			<Item Name="JSON-test.vi" Type="VI" URL="../../JSON-Q-matrices/JSON-test.vi"/>
			<Item Name="Multiply-gain.vi" Type="VI" URL="../Multiply-gain.vi"/>
			<Item Name="Transmit-state.vi" Type="VI" URL="../Transmit-state.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="XNET Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Fill In Error Info.vi"/>
				<Item Name="XNET Frame CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame CAN.ctl"/>
				<Item Name="XNET Frame FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame FlexRay.ctl"/>
				<Item Name="XNET Frame LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame LIN.ctl"/>
				<Item Name="XNET Frame Type CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type CAN.ctl"/>
				<Item Name="XNET Frame Type FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type FlexRay.ctl"/>
				<Item Name="XNET Frame Type LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type LIN.ctl"/>
				<Item Name="XNET LIN Diag Schedule Type.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Diag Schedule Type.ctl"/>
				<Item Name="XNET Write (Frame CAN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame CAN).vi"/>
				<Item Name="XNET Write (Frame FlexRay).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame FlexRay).vi"/>
				<Item Name="XNET Write (Frame LIN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame LIN).vi"/>
				<Item Name="XNET Write (Frame Raw).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame Raw).vi"/>
				<Item Name="XNET Write (Signal Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal Single-point).vi"/>
				<Item Name="XNET Write (Signal Waveform) .vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal Waveform) .vi"/>
				<Item Name="XNET Write (Signal XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal XY).vi"/>
				<Item Name="XNET Write (State FlexRay Symbol).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State FlexRay Symbol).vi"/>
				<Item Name="XNET Write (State LIN Diagnostic Schedule Change).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State LIN Diagnostic Schedule Change).vi"/>
				<Item Name="XNET Write (State LIN Schedule Change).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State LIN Schedule Change).vi"/>
				<Item Name="XNET Write.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write.vi"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="nixlvapi.dll" Type="Document" URL="nixlvapi.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
