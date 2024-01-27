#ifndef FLUTTER_PLUGIN_DIALOG_ALERT_TRANSITION_PLUGIN_H_
#define FLUTTER_PLUGIN_DIALOG_ALERT_TRANSITION_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace dialog_alert_transition {

class DialogAlertTransitionPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DialogAlertTransitionPlugin();

  virtual ~DialogAlertTransitionPlugin();

  // Disallow copy and assign.
  DialogAlertTransitionPlugin(const DialogAlertTransitionPlugin&) = delete;
  DialogAlertTransitionPlugin& operator=(const DialogAlertTransitionPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace dialog_alert_transition

#endif  // FLUTTER_PLUGIN_DIALOG_ALERT_TRANSITION_PLUGIN_H_
