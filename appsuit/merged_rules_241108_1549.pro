# auto-generated file by appsuit plugin.
# modifying this file has no effect.

# proguard rule start: E:\Program-DEV\Steal Alien Indonesia\Projects\Jetcaster AppSuit\Jetcaster AppSuit\app\proguard-rules.pro
# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
-renamesourcefileattribute SourceFile

# Repackage classes into the top-level.
-repackageclasses

# Rome reflectively loads classes referenced in com/rometools/rome/rome.properties.
-adaptresourcefilecontents com/rometools/rome/rome.properties
-keep,allowobfuscation class * implements com.rometools.rome.feed.synd.Converter
-keep,allowobfuscation class * implements com.rometools.rome.io.ModuleParser
-keep,allowobfuscation class * implements com.rometools.rome.io.WireFeedParser

# Disable warnings for missing classes from OkHttp.
-dontwarn org.conscrypt.ConscryptHostnameVerifier

# Disable warnings for missing classes from JDOM.
-dontwarn org.jaxen.DefaultNavigator
-dontwarn org.jaxen.NamespaceContext
-dontwarn org.jaxen.VariableContext

# proguard rule end: E:\Program-DEV\Steal Alien Indonesia\Projects\Jetcaster AppSuit\Jetcaster AppSuit\app\proguard-rules.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\c6e67a5c40fb4a5bac5896b062da4622\transformed\navigation-common-2.4.2\proguard.txt
# Copyright (C) 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NavArgsLazy creates NavArgs instances using reflection
-if public class ** implements androidx.navigation.NavArgs
-keepclassmembers public class <1> {
    ** fromBundle(android.os.Bundle);
}

# Retain the @Navigator.Name annotation on each subclass of Navigator.
# R8 full mode only retains annotations on items matched by a -keep rule,
# hence the extra -keep rule for the subclasses of Navigator.
#
# A -keep rule for the Navigator.Name annotation class is not required
# since the annotation is referenced from the code.
-keepattributes RuntimeVisibleAnnotations
-keep,allowobfuscation,allowshrinking class * extends androidx.navigation.Navigator

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\c6e67a5c40fb4a5bac5896b062da4622\transformed\navigation-common-2.4.2\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\4cafb4b5b5c6f007deec24a232c696ae\transformed\window-1.0.0\proguard.txt
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# A rule that will keep classes that implement SidecarInterface$SidecarCallback if Sidecar seems
# be used. See b/157286362 and b/165268619 for details.
# TODO(b/208543178) investigate how to pass header jar to R8 so we don't need this rule
-if class androidx.window.layout.SidecarCompat {
  public setExtensionCallback(androidx.window.layout.ExtensionInterfaceCompat$ExtensionCallbackInterface);
}
-keep class androidx.window.layout.SidecarCompat$TranslatingCallback,
 androidx.window.layout.SidecarCompat$DistinctSidecarElementCallback {
  public onDeviceStateChanged(androidx.window.sidecar.SidecarDeviceState);
  public onWindowLayoutChanged(android.os.IBinder, androidx.window.sidecar.SidecarWindowLayoutInfo);
}
# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\4cafb4b5b5c6f007deec24a232c696ae\transformed\window-1.0.0\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\9b60caec78326ddf950432757d6a1552\transformed\ui-1.2.0-alpha08\proguard.txt
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# We supply these as stubs and are able to link to them at runtime
# because they are hidden public classes in Android. We don't want
# R8 to complain about them not being there during optimization.
-dontwarn android.view.RenderNode
-dontwarn android.view.DisplayListCanvas

-keepclassmembers class androidx.compose.ui.platform.ViewLayerContainer {
    protected void dispatchGetDisplayList();
}

-keepclassmembers class androidx.compose.ui.platform.AndroidComposeView {
    android.view.View findViewByAccessibilityIdTraversal(int);
}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\9b60caec78326ddf950432757d6a1552\transformed\ui-1.2.0-alpha08\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\1ea94ea18f1e38c1050c61f3bc51c0ce\transformed\rules\lib\META-INF\com.android.tools\r8\coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/proguard/coroutines.pro
# - META-INF/com.android.tools/proguard/coroutines.pro

# Most of volatile fields are updated with AFU and should not be mangled
-keepclassmembers class kotlinx.coroutines.** {
    volatile <fields>;
}

# Same story for the standard library's SafeContinuation that also uses AtomicReferenceFieldUpdater
-keepclassmembers class kotlin.coroutines.SafeContinuation {
    volatile <fields>;
}

# These classes are only required by kotlinx.coroutines.debug.AgentPremain, which is only loaded when
# kotlinx-coroutines-core is used as a Java agent, so these are not needed in contexts where ProGuard is used.
-dontwarn java.lang.instrument.ClassFileTransformer
-dontwarn sun.misc.SignalHandler
-dontwarn java.lang.instrument.Instrumentation
-dontwarn sun.misc.Signal

# Only used in `kotlinx.coroutines.internal.ExceptionsConstructor`.
# The case when it is not available is hidden in a `try`-`catch`, as well as a check for Android.
-dontwarn java.lang.ClassValue

# An annotation used for build tooling, won't be directly accessed.
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\1ea94ea18f1e38c1050c61f3bc51c0ce\transformed\rules\lib\META-INF\com.android.tools\r8\coroutines.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\ca1bef32a0d49cfa6caac68e3b0a0fe8\transformed\runtime-1.2.0-alpha08\proguard.txt
-assumenosideeffects public class androidx.compose.runtime.ComposerKt {
    void sourceInformation(androidx.compose.runtime.Composer,java.lang.String);
    void sourceInformationMarkerStart(androidx.compose.runtime.Composer,int,java.lang.String);
    void sourceInformationMarkerEnd(androidx.compose.runtime.Composer);
}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\ca1bef32a0d49cfa6caac68e3b0a0fe8\transformed\runtime-1.2.0-alpha08\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\60c51c13791af83a519abf9e0d0906b7\transformed\rules\lib\META-INF\com.android.tools\r8-from-1.6.0\coroutines.pro
# Allow R8 to optimize away the FastServiceLoader.
# Together with ServiceLoader optimization in R8
# this results in direct instantiation when loading Dispatchers.Main
-assumenosideeffects class kotlinx.coroutines.internal.MainDispatcherLoader {
    boolean FAST_SERVICE_LOADER_ENABLED return false;
}

-assumenosideeffects class kotlinx.coroutines.internal.FastServiceLoaderKt {
    boolean ANDROID_DETECTED return true;
}

-keep class kotlinx.coroutines.android.AndroidDispatcherFactory {*;}

# Disable support for "Missing Main Dispatcher", since we always have Android main dispatcher
-assumenosideeffects class kotlinx.coroutines.internal.MainDispatchersKt {
    boolean SUPPORT_MISSING return false;
}

# Statically turn off all debugging facilities and assertions
-assumenosideeffects class kotlinx.coroutines.DebugKt {
    boolean getASSERTIONS_ENABLED() return false;
    boolean getDEBUG() return false;
    boolean getRECOVER_STACK_TRACES() return false;
}
# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\60c51c13791af83a519abf9e0d0906b7\transformed\rules\lib\META-INF\com.android.tools\r8-from-1.6.0\coroutines.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\9ff627ed31ccf68bb090bd9ed86045bc\transformed\lifecycle-viewmodel-savedstate-2.3.1\proguard.txt
-keepclassmembers,allowobfuscation class * extends androidx.lifecycle.ViewModel {
    <init>(androidx.lifecycle.SavedStateHandle);
}

-keepclassmembers,allowobfuscation class * extends androidx.lifecycle.AndroidViewModel {
    <init>(android.app.Application,androidx.lifecycle.SavedStateHandle);
}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\9ff627ed31ccf68bb090bd9ed86045bc\transformed\lifecycle-viewmodel-savedstate-2.3.1\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\6b0d2e9da6175ccb10b7049d566e7d4d\transformed\savedstate-1.2.0-beta01\proguard.txt
# Copyright (C) 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

-keepclassmembers,allowobfuscation class * implements androidx.savedstate.SavedStateRegistry$AutoRecreated {
    <init>();
}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\6b0d2e9da6175ccb10b7049d566e7d4d\transformed\savedstate-1.2.0-beta01\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\8deb6d52a339b007a12dc04618b35891\transformed\rules\lib\META-INF\proguard\okhttp3.pro
# JSR 305 annotations are for embedding nullability information.
-dontwarn javax.annotation.**

# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase

# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# OkHttp platform used only on JVM and when Conscrypt dependency is available.
-dontwarn okhttp3.internal.platform.ConscryptPlatform

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\8deb6d52a339b007a12dc04618b35891\transformed\rules\lib\META-INF\proguard\okhttp3.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\da67091b36da0f249ad03485aef1673e\transformed\room-runtime-2.4.2\proguard.txt
-keep class * extends androidx.room.RoomDatabase
-dontwarn androidx.room.paging.**

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\da67091b36da0f249ad03485aef1673e\transformed\room-runtime-2.4.2\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\7152655dbabf27cddc234c563a7fe443\transformed\lifecycle-viewmodel-2.4.1\proguard.txt
-keepclassmembers,allowobfuscation class * extends androidx.lifecycle.ViewModel {
    <init>();
}

-keepclassmembers,allowobfuscation class * extends androidx.lifecycle.AndroidViewModel {
    <init>(android.app.Application);
}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\7152655dbabf27cddc234c563a7fe443\transformed\lifecycle-viewmodel-2.4.1\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\308889468c350738606e4aa6b52370ae\transformed\rules\lib\META-INF\proguard\okio.pro
# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\308889468c350738606e4aa6b52370ae\transformed\rules\lib\META-INF\proguard\okio.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\e785d9a67a9cbbc83597fad357a98d66\transformed\vectordrawable-animated-1.1.0\proguard.txt
# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# keep setters in VectorDrawables so that animations can still work.
-keepclassmembers class androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$* {
   void set*(***);
   *** get*();
}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\e785d9a67a9cbbc83597fad357a98d66\transformed\vectordrawable-animated-1.1.0\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\3f7d677f6c418a7070956fe93996d94f\transformed\core-1.7.0\proguard.txt
# Never inline methods, but allow shrinking and obfuscation.
-keepclassmembernames,allowobfuscation,allowshrinking class androidx.core.view.ViewCompat$Api* {
  <methods>;
}
-keepclassmembernames,allowobfuscation,allowshrinking class androidx.core.view.WindowInsetsCompat$*Impl* {
  <methods>;
}
-keepclassmembernames,allowobfuscation,allowshrinking class androidx.core.app.NotificationCompat$*$Api*Impl {
  <methods>;
}
-keepclassmembernames,allowobfuscation,allowshrinking class androidx.core.os.UserHandleCompat$Api*Impl {
  <methods>;
}
-keepclassmembernames,allowobfuscation,allowshrinking class androidx.core.widget.EdgeEffectCompat$Api*Impl {
  <methods>;
}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\3f7d677f6c418a7070956fe93996d94f\transformed\core-1.7.0\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\9b5a670029c5a4c15382c5904d1e7096\transformed\lifecycle-runtime-2.4.1\proguard.txt
-keepattributes AnnotationDefault,
                RuntimeVisibleAnnotations,
                RuntimeVisibleParameterAnnotations,
                RuntimeVisibleTypeAnnotations

-keepclassmembers enum androidx.lifecycle.Lifecycle$Event {
    <fields>;
}

-keep !interface * implements androidx.lifecycle.LifecycleObserver {
}

-keep class * implements androidx.lifecycle.GeneratedAdapter {
    <init>(...);
}

-keepclassmembers class ** {
    @androidx.lifecycle.OnLifecycleEvent *;
}

# this rule is need to work properly when app is compiled with api 28, see b/142778206
# Also this rule prevents registerIn from being inlined.
-keepclassmembers class androidx.lifecycle.ReportFragment$LifecycleCallbacks { *; }
# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\9b5a670029c5a4c15382c5904d1e7096\transformed\lifecycle-runtime-2.4.1\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\d3f32515784ab86c7bb3edc2bc680a48\transformed\versionedparcelable-1.1.1\proguard.txt
-keep class * implements androidx.versionedparcelable.VersionedParcelable
-keep public class android.support.**Parcelizer { *; }
-keep public class androidx.**Parcelizer { *; }
-keep public class androidx.versionedparcelable.ParcelImpl

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\d3f32515784ab86c7bb3edc2bc680a48\transformed\versionedparcelable-1.1.1\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\87fd304f7cc587baf6a89022f51dd15d\transformed\startup-runtime-1.0.0\proguard.txt
# This Proguard rule ensures that ComponentInitializers are are neither shrunk nor obfuscated.
# This is because they are discovered and instantiated during application initialization.
-keep class * extends androidx.startup.Initializer {
    # Keep the public no-argument constructor while allowing other methods to be optimized.
    <init>();
}

-assumenosideeffects class androidx.startup.StartupLogger

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\87fd304f7cc587baf6a89022f51dd15d\transformed\startup-runtime-1.0.0\proguard.txt

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\6f48324e7da0a1ed880f5d8dad715cbf\transformed\rules\lib\META-INF\proguard\androidx-annotations.pro
-keep,allowobfuscation @interface androidx.annotation.Keep
-keep @androidx.annotation.Keep class * {*;}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <init>(...);
}

-keepclassmembers,allowobfuscation class * {
  @androidx.annotation.DoNotInline <methods>;
}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\6f48324e7da0a1ed880f5d8dad715cbf\transformed\rules\lib\META-INF\proguard\androidx-annotations.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\transforms-3\eb2c25fcfaeeb591615886ef7e08c8b4\transformed\annotation-experimental-1.1.0\proguard.txt
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Ignore missing Kotlin meta-annotations so that this library can be used
# without adding a compileOnly dependency on the Kotlin standard library.
-dontwarn kotlin.Deprecated
-dontwarn kotlin.Metadata
-dontwarn kotlin.ReplaceWith
-dontwarn kotlin.annotation.AnnotationRetention
-dontwarn kotlin.annotation.AnnotationTarget
-dontwarn kotlin.annotation.Retention
-dontwarn kotlin.annotation.Target

# proguard rule end: C:\Users\tohap_88\.gradle\caches\transforms-3\eb2c25fcfaeeb591615886ef7e08c8b4\transformed\annotation-experimental-1.1.0\proguard.txt

# proguard rule start: E:\Program-DEV\Steal Alien Indonesia\Projects\Jetcaster AppSuit\Jetcaster AppSuit\app\build\intermediates\default_proguard_files\global\proguard-android.txt-7.1.2
# This is a configuration file for ProGuard.
# http://proguard.sourceforge.net/index.html#manual/usage.html
#
# Starting with version 2.2 of the Android plugin for Gradle, this file is distributed together with
# the plugin and unpacked at build-time. The files in $ANDROID_HOME are no longer maintained and
# will be ignored by new version of the Android plugin for Gradle.

# Optimization is turned off by default. Dex does not like code run
# through the ProGuard optimize steps (and performs some
# of these optimizations on its own).
# Note that if you want to enable optimization, you cannot just
# include optimization flags in your own project configuration file;
# instead you will need to point to the
# "proguard-android-optimize.txt" file instead of this one from your
# project.properties file.
-dontoptimize

-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose

# Preserve some attributes that may be required for reflection.
-keepattributes AnnotationDefault,
                EnclosingMethod,
                InnerClasses,
                RuntimeVisibleAnnotations,
                RuntimeVisibleParameterAnnotations,
                RuntimeVisibleTypeAnnotations,
                Signature

-keep public class com.google.vending.licensing.ILicensingService
-keep public class com.android.vending.licensing.ILicensingService
-keep public class com.google.android.vending.licensing.ILicensingService
-dontnote com.android.vending.licensing.ILicensingService
-dontnote com.google.vending.licensing.ILicensingService
-dontnote com.google.android.vending.licensing.ILicensingService

# For native methods, see http://proguard.sourceforge.net/manual/examples.html#native
-keepclasseswithmembernames,includedescriptorclasses class * {
    native <methods>;
}

# Keep setters in Views so that animations can still work.
-keepclassmembers public class * extends android.view.View {
    void set*(***);
    *** get*();
}

# We want to keep methods in Activity that could be used in the XML attribute onClick.
-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}

# For enumeration classes, see http://proguard.sourceforge.net/manual/examples.html#enumerations
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keepclassmembers class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

# Preserve annotated Javascript interface methods.
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# The support libraries contains references to newer platform versions.
# Don't warn about those in case this app is linking against an older
# platform version. We know about them, and they are safe.
-dontnote android.support.**
-dontnote androidx.**
-dontwarn android.support.**
-dontwarn androidx.**

# This class is deprecated, but remains for backward compatibility.
-dontwarn android.util.FloatMath

# Understand the @Keep support annotation.
-keep class android.support.annotation.Keep
-keep class androidx.annotation.Keep

-keep @android.support.annotation.Keep class * {*;}
-keep @androidx.annotation.Keep class * {*;}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <init>(...);
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <init>(...);
}

# These classes are duplicated between android.jar and org.apache.http.legacy.jar.
-dontnote org.apache.http.**
-dontnote android.net.http.**

# These classes are duplicated between android.jar and core-lambda-stubs.jar.
-dontnote java.lang.invoke.**

# proguard rule end: E:\Program-DEV\Steal Alien Indonesia\Projects\Jetcaster AppSuit\Jetcaster AppSuit\app\build\intermediates\default_proguard_files\global\proguard-android.txt-7.1.2

# proguard rule start: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/com.android.tools/r8/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/proguard/coroutines.pro
# - META-INF/com.android.tools/proguard/coroutines.pro

# Most of volatile fields are updated with AFU and should not be mangled
-keepclassmembers class kotlinx.coroutines.** {
    volatile <fields>;
}

# Same story for the standard library's SafeContinuation that also uses AtomicReferenceFieldUpdater
-keepclassmembers class kotlin.coroutines.SafeContinuation {
    volatile <fields>;
}

# These classes are only required by kotlinx.coroutines.debug.AgentPremain, which is only loaded when
# kotlinx-coroutines-core is used as a Java agent, so these are not needed in contexts where ProGuard is used.
-dontwarn java.lang.instrument.ClassFileTransformer
-dontwarn sun.misc.SignalHandler
-dontwarn java.lang.instrument.Instrumentation
-dontwarn sun.misc.Signal

# Only used in `kotlinx.coroutines.internal.ExceptionsConstructor`.
# The case when it is not available is hidden in a `try`-`catch`, as well as a check for Android.
-dontwarn java.lang.ClassValue

# An annotation used for build tooling, won't be directly accessed.
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
# proguard rule end: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/com.android.tools/r8/coroutines.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/com.android.tools/proguard/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/proguard/coroutines.pro
# - META-INF/com.android.tools/r8/coroutines.pro

# ServiceLoader support
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}

# Most of volatile fields are updated with AFU and should not be mangled
-keepclassmembers class kotlinx.coroutines.** {
    volatile <fields>;
}

# Same story for the standard library's SafeContinuation that also uses AtomicReferenceFieldUpdater
-keepclassmembers class kotlin.coroutines.SafeContinuation {
    volatile <fields>;
}

# These classes are only required by kotlinx.coroutines.debug.AgentPremain, which is only loaded when
# kotlinx-coroutines-core is used as a Java agent, so these are not needed in contexts where ProGuard is used.
-dontwarn java.lang.instrument.ClassFileTransformer
-dontwarn sun.misc.SignalHandler
-dontwarn java.lang.instrument.Instrumentation
-dontwarn sun.misc.Signal

# Only used in `kotlinx.coroutines.internal.ExceptionsConstructor`.
# The case when it is not available is hidden in a `try`-`catch`, as well as a check for Android.
-dontwarn java.lang.ClassValue

# An annotation used for build tooling, won't be directly accessed.
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement

# proguard rule end: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/com.android.tools/proguard/coroutines.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/proguard/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/com.android.tools/proguard/coroutines.pro
# - META-INF/com.android.tools/r8/coroutines.pro

# ServiceLoader support
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}

# Most of volatile fields are updated with AFU and should not be mangled
-keepclassmembers class kotlinx.coroutines.** {
    volatile <fields>;
}

# Same story for the standard library's SafeContinuation that also uses AtomicReferenceFieldUpdater
-keepclassmembers class kotlin.coroutines.SafeContinuation {
    volatile <fields>;
}

# These classes are only required by kotlinx.coroutines.debug.AgentPremain, which is only loaded when
# kotlinx-coroutines-core is used as a Java agent, so these are not needed in contexts where ProGuard is used.
-dontwarn java.lang.instrument.ClassFileTransformer
-dontwarn sun.misc.SignalHandler
-dontwarn java.lang.instrument.Instrumentation
-dontwarn sun.misc.Signal

# Only used in `kotlinx.coroutines.internal.ExceptionsConstructor`.
# The case when it is not available is hidden in a `try`-`catch`, as well as a check for Android.
-dontwarn java.lang.ClassValue

# An annotation used for build tooling, won't be directly accessed.
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement

# proguard rule end: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/proguard/coroutines.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\com.squareup.okhttp3\okhttp\4.9.1\51215279c3fe472c59b6b7dd7491e6ac2e28a81b\okhttp-4.9.1.jar\META-INF/proguard/okhttp3.pro
# JSR 305 annotations are for embedding nullability information.
-dontwarn javax.annotation.**

# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase

# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# OkHttp platform used only on JVM and when Conscrypt dependency is available.
-dontwarn okhttp3.internal.platform.ConscryptPlatform

# proguard rule end: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\com.squareup.okhttp3\okhttp\4.9.1\51215279c3fe472c59b6b7dd7491e6ac2e28a81b\okhttp-4.9.1.jar\META-INF/proguard/okhttp3.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\androidx.annotation\annotation\1.2.0\57136ff68ee784c6e19db34ed4a175338fadfde1\annotation-1.2.0.jar\META-INF/proguard/androidx-annotations.pro
-keep,allowobfuscation @interface androidx.annotation.Keep
-keep @androidx.annotation.Keep class * {*;}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <init>(...);
}

-keepclassmembers,allowobfuscation class * {
  @androidx.annotation.DoNotInline <methods>;
}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\androidx.annotation\annotation\1.2.0\57136ff68ee784c6e19db34ed4a175338fadfde1\annotation-1.2.0.jar\META-INF/proguard/androidx-annotations.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\com.squareup.okio\okio\2.10.0\accaddddbb597fb70290fd40358b1ce66b8c2b3d\okio-jvm-2.10.0.jar\META-INF/proguard/okio.pro
# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# proguard rule end: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\com.squareup.okio\okio\2.10.0\accaddddbb597fb70290fd40358b1ce66b8c2b3d\okio-jvm-2.10.0.jar\META-INF/proguard/okio.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/r8-from-1.6.0/coroutines.pro
# Allow R8 to optimize away the FastServiceLoader.
# Together with ServiceLoader optimization in R8
# this results in direct instantiation when loading Dispatchers.Main
-assumenosideeffects class kotlinx.coroutines.internal.MainDispatcherLoader {
    boolean FAST_SERVICE_LOADER_ENABLED return false;
}

-assumenosideeffects class kotlinx.coroutines.internal.FastServiceLoaderKt {
    boolean ANDROID_DETECTED return true;
}

-keep class kotlinx.coroutines.android.AndroidDispatcherFactory {*;}

# Disable support for "Missing Main Dispatcher", since we always have Android main dispatcher
-assumenosideeffects class kotlinx.coroutines.internal.MainDispatchersKt {
    boolean SUPPORT_MISSING return false;
}

# Statically turn off all debugging facilities and assertions
-assumenosideeffects class kotlinx.coroutines.DebugKt {
    boolean getASSERTIONS_ENABLED() return false;
    boolean getDEBUG() return false;
    boolean getRECOVER_STACK_TRACES() return false;
}
# proguard rule end: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/r8-from-1.6.0/coroutines.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/r8-upto-1.6.0/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/com.android.tools/proguard/coroutines.pro
# - META-INF/proguard/coroutines.pro

-keep class kotlinx.coroutines.android.AndroidDispatcherFactory {*;}

-assumenosideeffects class kotlinx.coroutines.internal.FastServiceLoader {
    boolean ANDROID_DETECTED return true;
}
# proguard rule end: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/r8-upto-1.6.0/coroutines.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/proguard/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/com.android.tools/r8-upto-1.6.0/coroutines.pro
# - META-INF/proguard/coroutines.pro

-keep class kotlinx.coroutines.android.AndroidDispatcherFactory {*;}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/proguard/coroutines.pro

# proguard rule start: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/proguard/coroutines.pro
# Files in this directory will be ignored starting with Android Gradle Plugin 3.6.0+

# When editing this file, update the following files as well for AGP 3.6.0+:
# - META-INF/com.android.tools/proguard/coroutines.pro
# - META-INF/com.android.tools/r8-upto-1.6.0/coroutines.pro

-keep class kotlinx.coroutines.android.AndroidDispatcherFactory {*;}

# proguard rule end: C:\Users\tohap_88\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/proguard/coroutines.pro


# appsuit rule start: E:\Program-DEV\Steal Alien Indonesia\Projects\Jetcaster AppSuit\Jetcaster AppSuit\appsuit\rule.pro
-logout_std
#-no_remove_logging #배포 시 제외

# android standard
-keep class android.** { *; }
-keep class androidx.** { *; }

-keepbare class android.** { *; }
-keepbare class androidx.** { *; }

-keep class org.apache.** { *; }
-keepstrings class org.apache.** { *; }

# kotlin library
-keep class kotlin.** { *; }
-keep class kotlinx.** { *; }

# firebase rule
-keep class com.google.** { *; }
-keepreflect class com.google.** { *; }
-keepstrings class com.google.** { *; }
-keepflow class com.google.** { *; }

# third-party
-keep class javax.** { *; }
-keep class okhttp3.** { *; }
-keepreflect class okhttp3.** { *; }

-keep class okio.** { *; }
-keep class retrofit2.** { *; }
-keep class io.reactivex.** { *; }
-keep class dagger.** { *; }
-keep class org.xmlpull.** { *; }
-keep class butterknife.** { *; }

-keep class com.facebook.** { *; }
-keepreflect class com.facebook.** { *; }
-keep class android.support.v4.app.** { *; }
-keepbare class android.support.v4.app.** { *; }

# except layout, component
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.widget.TextView

-keepclassmembers class * { @android.webkit.JavascriptInterface <methods>; }

-keepclasseswithmembernames class * {
native <methods>;
}

-keepclassmembers class * extends android.support.v7.app.AppCompatActivity {
public void *(android.view.View);
}

-keepclassmembers class * extends android.app.Activity {
public void *(android.view.View);
}

-keepclassmembers enum * {
    values(...);
    valueOf(...);
}

-keepreflect class a.AppSuitDexLoader { *; }
-keepreflect class a.AppSuitDexLoader$* { *; }
-keepstrings class a.AppSuitDexLoader { *; }
-keepstrings class a.AppSuitDexLoader$* { *; }

-reflect_flow_target_all

-keepreflect class **.Dagger* { *; }

-keepreflect class **$** { public final invoke(...); }
-keepreflect class **$** { @androidx.compose.runtime.Composable <methods>; }
-keepreflect class **.** { @androidx.compose.runtime.Composable <methods>; }

-use_api_desugar
-use_d8
-sync_lib_proguard_rules

-dumpprofile proguard

#-keep class io.flutter.** { *; }

-secure_handler com.example.jetcaster.ui.AppSuitDialog.showHandlerDialog

#default secure_handler
#-secure_handler_timeout 10000
-secure_handler_timeout 5000

-secure_handler_detail

-radar_url https://radar.appsu.it/

# appsuit rule end: E:\Program-DEV\Steal Alien Indonesia\Projects\Jetcaster AppSuit\Jetcaster AppSuit\appsuit\rule.pro
# Fri Nov 08 15:49:54 WIB 2024
