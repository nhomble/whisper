WHISPER(1) "github.com/nhomble/whisper" "General Commands Manual"
# NAME

whisper - command-line tool for sending secret messages

# SYNOPSIS

*whisper*

# DESCRIPTION

*whisper* is a command-line tool ontop of www.gosecret.io that allows you to 
generate secret messages in your terminal to send to others.

# COMMANDS

## CONFIGURATION COMMANDS

*-m* _message_
	This flag informs the cli to send a message. This is the sensitive text you
	want to send. If you set this parameter, you may not set *-s*.

*-s* _secret_id_
	This flag informs the cli to read a message. This is secretId that is 
	generated from the *-m* command.

*-p*
	This flag enables password input to either the write or read command. By
	default, you are prompted for the password. If the *WHISPER_PASSWORD* 
	variable is available in the environment, that takes precedence.

*-l* _lifespan_
	This parameter sets the lifespan of the secret via the *-m* command. The 
	duration is in ISO-8601.

## ENVIRONMENT VARIABLES

*WHISPER_GOSECRET*
	Defaulted to https://www.gosecret.io, you can set this environment variable
	to instruct the cli to point to a different instance.

*WHISPER_PASSWORD*
	Defaulted to nothing, you can set this environment variable to avoid the
	password prompt when using the *-p* flag.

# EXAMPLES

Create a secret message

	whisper -m "This is sensitive"

Read a secret message

	whisper -s "06fc3b7879d94509ac84a2413621a438"
