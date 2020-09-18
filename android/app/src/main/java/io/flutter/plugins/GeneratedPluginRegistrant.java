package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import com.jhomlala.better_player.VideoPlayerPlugin;
import xyz.luan.audioplayers.AudioplayersPlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import creativecreatorormaybenot.wakelock.WakelockPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    VideoPlayerPlugin.registerWith(registry.registrarFor("com.jhomlala.better_player.VideoPlayerPlugin"));
    AudioplayersPlugin.registerWith(registry.registrarFor("xyz.luan.audioplayers.AudioplayersPlugin"));
    PathProviderPlugin.registerWith(registry.registrarFor("io.flutter.plugins.pathprovider.PathProviderPlugin"));
    WakelockPlugin.registerWith(registry.registrarFor("creativecreatorormaybenot.wakelock.WakelockPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
