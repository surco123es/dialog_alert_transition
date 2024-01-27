#include "include/dialog_alert_transition/dialog_alert_transition_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "dialog_alert_transition_plugin.h"

void DialogAlertTransitionPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  dialog_alert_transition::DialogAlertTransitionPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
