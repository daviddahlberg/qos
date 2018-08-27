QOS(1) - General Commands Manual

# NAME

**qos** - show infos about dscp and tos values

# SYNOPSIS

**qos**
*value*

# DESCRIPTION

**qos**
decodes dscp and tos values and converts values between the different
interpretations and encodings.

The following options are available:

*value*

> The argument
> *value*
> can either be a TOS value in hexadecimal notation (0xb8), a DSCP value
> in decimal notation (46) or an IANA-registered codepoint name (EF).

# EXIT STATUS

The **qos** utility exits&#160;0 on success, and&#160;&gt;0 if an error occurs.

# EXAMPLES

	$ qos 0xb8

# HISTORY

The
**qos**
utility has been available since 2018.

# AUTHORS

David Dahlberg &lt;[dyn+code@dahlberg.cologne](mailto:dyn+code@dahlberg.cologne)&gt;

OpenBSD 6.4 - May 25, 2018
