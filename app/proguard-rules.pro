# Keep VTS application classes
-keep class com.emmiofficial.vts.** { *; }

# Keep ML Kit face detection classes
-keep class com.google.mlkit.vision.face.** { *; }

# Keep Filament 3D engine classes
-keep class com.google.android.filament.** { *; }

# Keep VRM model classes (for serialization)
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# Keep native libraries (if using JNI)
-keep class com.emmiofficial.vts.jni.** { *; }

# Remove Log statements in release builds
-assumenosideeffects class android.util.Log { *; }

# Keep annotation metadata for libraries using reflection
-keepattributes *Annotation*

# Last updated: 2025-04-02 16:10:00
