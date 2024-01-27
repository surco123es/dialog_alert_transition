//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dialog_alert_transition/dialog_alert_transition_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) dialog_alert_transition_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DialogAlertTransitionPlugin");
  dialog_alert_transition_plugin_register_with_registrar(dialog_alert_transition_registrar);
}
