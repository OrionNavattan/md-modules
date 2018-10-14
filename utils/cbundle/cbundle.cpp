
/* ------------------------------------------------------------ *
 * Bundle Compilation utility v.1.0								*
 * Main definitions file										*
 * (c) 2017, Vladikcomper										*
 * ------------------------------------------------------------	*/

#define _CPPHeaders_

// Standard C-libraries
// NOTICE: Somehow, replacing these headers with C++ version makes program much slower
#ifdef _CPPHeaders_
	#include <cstdio>			// for I/O operations and file accesses
	#include <cstdint>			// for uint8_t, uint16_t, etc.
	#include <cstdarg>			// for va_start, va_end, etc.
#else
	#include <stdio.h>			// for I/O operations and file accesses
	#include <stdint.h>			// for uint8_t, uint16_t, etc.
	#include <stdarg.h>			// for va_start, va_end, etc.
#endif

// Standard C++ libraries
#include <string>			// for strings processing
#include <vector>			// standard containers
#include <set>				// ''
#include <map>				// ''

using namespace std;

// Helper classes
#include "../core/IO.hpp"
#include "../core/ArgvParser.hpp"
#include "ScriptParser.hpp"

/* Main function */
int main (int argc, const char ** argv) {

	/* Provide help if called without enough options */
	if (argc<2) {
		printf(
			"CBundle utility version 1.0\n"
			"2017, vladikcomper\n"
			"\n"
			"Command line arguments:\n"
			"  cbundle <script_file_path>\n"
			"\n"
			"List of supported directives:\n"
			"\n"
			"  #define <Symbol>\n"
			"    Defines a symbol.\n"
			"\n"
			"  #undef <Symbol>\n"
			"    Removes a symbol from defined symbols list.\n"
			"\n"
			"  #file <FilePath>\n"
			"    Creates or rewrites a file, directs all the output to this file.\n"
			"\n"
			"  #endf\n"
			"    Finishes writing to previously opened file.\n"
			"\n"
			"  #ifdef <Symbol>\n"
			"    Enters IF-block if symbol was defined previously.\n"
			"\n"
			"  #ifndef <Symbol>\n"
			"    Enters IF-block if symbol wasn't defined previously.\n"
			"\n"
			"  #else\n"
			"    Enters ELSE-block if the IF-block's condition wasn't met.\n"
			"\n"
			"  #endif\n"
			"    Ends IF-ELSE-block.\n"
		);
		return 1;
	}

	/* Parse command line arguments */
	const char *inputFileName = argv[1];
	bool optDebug = true;
	IO::LogLevel = optDebug ? IO::debug : IO::warning;
	
	/* Process input file */
	Parser::parseFile( inputFileName );

	return 0;

}
