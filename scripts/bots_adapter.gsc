init()
{
	level.bot_builtins["printconsole"] = ::do_printconsole;
	level.bot_builtins["filewrite"] = ::do_filewrite;
	level.bot_builtins["fileread"] = ::do_fileread;
	level.bot_builtins["fileexists"] = ::do_fileexists;
	level.bot_builtins["botaction"] = ::do_botaction;
	level.bot_builtins["botstop"] = ::do_botstop;
	level.bot_builtins["botmovement"] = ::do_botmovement;
}

do_printconsole( s )
{
	println( s );
}

do_filewrite( file, contents, mode )
{
	file = "scriptdata/" + file;
}

do_fileread( file )
{
	file = "scriptdata/" + file;
	return undefined;
}

do_fileexists( file )
{
	file = "scriptdata/" + file;
	return false;
}

do_botaction( action )
{
	self BotAction( action );
}

do_botstop()
{
	self BotStop();
}

do_botmovement( left, forward )
{
	self BotMovement( left, forward );
}
