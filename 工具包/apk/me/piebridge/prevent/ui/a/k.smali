.class public Lme/piebridge/prevent/ui/a/k;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 39
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    const-string v1, "light"

    const-string v2, "theme"

    const-string v3, "light"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const v0, 0x7f060001

    :goto_17
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 41
    invoke-static {}, Lme/piebridge/prevent/ui/a/k;->a()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 44
    :cond_28
    return-void

    .line 40
    :cond_29
    const/high16 v0, 0x7f060000

    goto :goto_17
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 47
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    const-string v1, "theme"

    const-string v2, "light"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "light"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme"

    const-string v2, "dark"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    :goto_23
    return-void

    .line 52
    :cond_24
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme"

    const-string v2, "light"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_23
.end method

.method private static a()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 30
    :try_start_1
    const-class v0, Landroid/os/Build;

    const-string v2, "hasSmartBar"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 31
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1b

    move-result v0

    .line 35
    :goto_1a
    return v0

    .line 32
    :catch_1b
    move-exception v0

    move v0, v1

    .line 35
    goto :goto_1a
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_a

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V
    :try_end_a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_a} :catch_b

    .line 65
    :cond_a
    :goto_a
    return-void

    .line 62
    :catch_b
    move-exception v0

    goto :goto_a
.end method
