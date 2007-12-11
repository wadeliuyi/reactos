<module name="advapi32" type="win32dll" baseaddress="${BASEADDRESS_ADVAPI32}" installbase="system32" installname="advapi32.dll">

	<importlibrary definition="advapi32.def" />
	<include base="advapi32">.</include>
	<include base="scm_client">.</include>
	<include base="lsa_client">.</include>
	<include base="eventlog_client">.</include>
	<define name="WINVER">0x600</define>
	<define name="_WIN32_IE">0x0500</define>
	<define name="_WIN32_WINNT">0x0600</define>
	<define name="UNICODE"></define>
	<define name="_UNICODE"></define>
	<library>scm_client</library>
	<library>lsa_client</library>
	<library>eventlog_client</library>
	<library>ntdll</library>
	<library>rpcrt4</library>
	<library>wine</library>
	<library>kernel32</library>
	<library>pseh</library>
	<pch>advapi32.h</pch>
	<directory name="crypt">
			<file>crypt.c</file>
			<file>crypt_des.c</file>
			<file>crypt_lmhash.c</file>
			<file>crypt_md4.c</file>
			<file>crypt_md5.c</file>
			<file>crypt_sha.c</file>
	</directory>
	<directory name="misc">
			<file>dllmain.c</file>
			<file>hwprofiles.c</file>
			<file>logon.c</file>
			<file>msi.c</file>
			<file>shutdown.c</file>
			<file>sysfunc.c</file>
			<file>trace.c</file>
	</directory>
	<directory name="reg">
		<file>reg.c</file>
	</directory>
	<directory name="sec">
			<file>ac.c</file>
			<file>audit.c</file>
			<file>lsa.c</file>
			<file>misc.c</file>
			<file>sec.c</file>
			<file>sid.c</file>
			<file>trustee.c</file>
	</directory>
	<directory name="service">
			<file>eventlog.c</file>
			<file>rpc.c</file>
			<file>scm.c</file>
			<file>sctrl.c</file>
			<file>undoc.c</file>
	</directory>
	<directory name="token">
			<file>privilege.c</file>
			<file>token.c</file>
	</directory>
	<file>advapi32.rc</file>
</module>
