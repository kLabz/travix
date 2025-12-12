package travix.commands;

import tink.cli.Rest;

using sys.FileSystem;

class JvmCommand extends JavaCommand {

  override public function install() {
    installLib('hxjava');
  }

  override public function buildAndRun(rest:Rest<String>) {
    var main = Travix.getMainClassLocalName();

    build('jvm', ['-jvm', 'bin/jvm.jar'].concat(rest), function () {
      exec('java', ['-jar', 'bin/jvm.jar']);
    });
  }
}
