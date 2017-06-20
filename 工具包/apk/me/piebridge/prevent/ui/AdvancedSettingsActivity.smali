.class public Lme/piebridge/prevent/ui/AdvancedSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    invoke-static {p0, p1}, Lme/piebridge/prevent/ui/a/b;->a(Landroid/preference/PreferenceActivity;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_9

    .line 44
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    :cond_9
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/k;->a(Landroid/app/Activity;)V

    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/high16 v1, 0x7f040000

    invoke-static {p0, v1}, Lme/piebridge/prevent/ui/a/b;->a(Landroid/preference/PreferenceActivity;I)V

    .line 26
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 27
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 30
    :cond_1a
    sget-object v2, Lme/piebridge/prevent/a/g;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1e
    if-ge v1, v3, :cond_28

    aget-object v4, v2, v1

    .line 31
    invoke-direct {p0, v4}, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;->a(Ljava/lang/String;)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 34
    :cond_28
    sget-object v1, Lme/piebridge/prevent/a/g;->b:[Ljava/lang/String;

    array-length v2, v1

    :goto_2b
    if-ge v0, v2, :cond_35

    aget-object v3, v1, v0

    .line 35
    invoke-direct {p0, v3}, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;->a(Ljava/lang/String;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 38
    :cond_35
    const-string v0, "backup_prevent_list"

    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 51
    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 52
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;->finish()V

    .line 54
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;->a:Z

    .line 76
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 77
    return v0
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;->a:Z

    .line 61
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;->a:Z

    if-eqz v0, :cond_7

    .line 67
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/g;->c(Landroid/content/Context;)V

    .line 69
    :cond_7
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 70
    return-void
.end method
