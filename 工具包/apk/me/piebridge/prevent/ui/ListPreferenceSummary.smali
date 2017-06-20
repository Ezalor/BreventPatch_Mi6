.class public Lme/piebridge/prevent/ui/ListPreferenceSummary;
.super Landroid/preference/ListPreference;
.source "ListPreferenceSummary.java"


# instance fields
.field private a:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 24
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/ListPreferenceSummary;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/ListPreferenceSummary;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 28
    :goto_11
    return-object v0

    :cond_12
    invoke-super {p0}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11
.end method

.method public onClick()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lme/piebridge/prevent/ui/ListPreferenceSummary;->a:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lme/piebridge/prevent/ui/ListPreferenceSummary;->a:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 39
    :cond_c
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 41
    :cond_f
    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lme/piebridge/prevent/ui/ListPreferenceSummary;->a:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 34
    return-void
.end method
