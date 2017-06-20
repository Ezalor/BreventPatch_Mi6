.class public Lme/piebridge/prevent/ui/a/b;
.super Ljava/lang/Object;
.source "DeprecatedUtils.java"


# direct methods
.method public static a(Landroid/preference/PreferenceActivity;Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 18
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 19
    return-void
.end method

.method public static a(Landroid/preference/PreferenceActivity;I)V
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 24
    return-void
.end method
