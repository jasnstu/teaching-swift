#!/usr/bin/env swift

import Foundation

/// The very first element is the current script
let script = CommandLine.arguments[0]
print("Script:", script)

/// You can get the input arguments by dropping the first element
let inputArgs = CommandLine.arguments.dropFirst()
print("Number of arguments:", inputArgs.count)

print("Arguments:")
for arg in inputArgs {
    print("-", arg)
}

///// You can also get Process & Environement info from Foundation
//
//let info = ProcessInfo.processInfo
//
//print("Process info")
//print("Process identifier:", info.processIdentifier)
//print("System uptime:", info.systemUptime)
//print("Globally unique process id strings:", info.globallyUniqueString)
//print("Process name:", info.processName)
//
//print("Software info")
//print("Host name:", info.hostName)
//print("OS major version:", info.operatingSystemVersion.majorVersion)
//print("OS version string:", info.operatingSystemVersionString)
//
//print("Hardware info")
//print("Active processor cont:", info.activeProcessorCount)
//print("Physical memory (bytes)", info.physicalMemory)
//
///// Same as the CommandLine.arguments
//print("Arguments")
//print(ProcessInfo.processInfo.arguments)
//
//print("Environment")
///// Print available environment variables
//print(info.environment)
//

/// Write to the standard output
"This goes to the standard error output"
    .data(using: .utf8)
    .map(FileHandle.standardError.write)

/// Print to the standard output using a custom stream
final class StandardErrorOutputStream: TextOutputStream {
    func write(_ string: String) {
        FileHandle.standardError.write(Data(string.utf8))
    }
}

var outputStream = StandardErrorOutputStream()
print("This is also an error", to: &outputStream)

/// Clears the console (@NOTE: won't work in XCode)
func clear() {
    print("\u{1B}[2J")
    print("\u{1B}[\(1);\(0)H", terminator: "")
}

//clear()


print("Please enter something:")
guard let input = readLine(strippingNewline: true) else {
    fatalError("Missing input")
}

print("You entered \"\(input)\"")

/// print colorful text using ANSI escape codes
print("\u{1b}[31;1m\u{1b}[40;1m\("Hello, world!")\u{1b}[m")
print("\u{1b}[32;1m\("Hello, world!")\u{1b}[m")

/// https://theswiftdev.com/how-to-build-better-command-line-apps-and-tools-using-swift/
