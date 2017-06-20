.class public Lme/piebridge/prevent/ui/a/g;
.super Ljava/lang/Object;
.source "PreventUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/piebridge/prevent/ui/a/g$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;J)J
    .registers 8

    .prologue
    .line 164
    .line 166
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_2a
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_b} :catch_42

    move-result-wide p3

    .line 172
    :goto_c
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;)V

    .line 174
    return-wide p3

    .line 167
    :catch_2a
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 169
    :catch_42
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "me.piebridge.prevent.REBOOT"

    const-string v2, "prevent"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    const-string v1, "android.permission.SHUTDOWN"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 88
    const v0, 0x7f05003c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "me.piebridge.prevent.UPDATE_CONFIGURATION"

    const-string v2, "prevent"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    const-string v1, "me.piebridge.prevent.CONFIGURATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    const-string v1, "android.permission.SHUTDOWN"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 208
    sget-object v5, Lme/piebridge/prevent/a/g;->a:[Ljava/lang/String;

    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_b
    if-ge v3, v6, :cond_1c

    aget-object v7, v5, v3

    .line 209
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 211
    invoke-static {v4, p1, v7}, Lme/piebridge/prevent/ui/a/g;->b(Landroid/content/SharedPreferences;Lorg/json/JSONObject;Ljava/lang/String;)V

    move v0, v1

    .line 208
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 214
    :cond_1c
    sget-object v3, Lme/piebridge/prevent/a/g;->b:[Ljava/lang/String;

    array-length v5, v3

    :goto_1f
    if-ge v2, v5, :cond_30

    aget-object v6, v3, v2

    .line 215
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 217
    invoke-static {v4, p1, v6}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/SharedPreferences;Lorg/json/JSONObject;Ljava/lang/String;)V

    move v0, v1

    .line 214
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 220
    :cond_30
    if-nez v0, :cond_35

    .line 221
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/g;->c(Landroid/content/Context;)V

    .line 223
    :cond_35
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Z)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 38
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_7

    .line 46
    :cond_6
    :goto_6
    return-void

    .line 41
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v0, "me.piebridge.prevent.UPDATE_PREVENT"

    const-string v2, "prevent"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    const-string v0, "me.piebridge.prevent.PACKAGES"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v0, "me.piebridge.prevent.PREVENT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    const-string v2, "android.permission.SHUTDOWN"

    new-instance v3, Lme/piebridge/prevent/ui/a/g$a;

    invoke-direct {v3, v4}, Lme/piebridge/prevent/ui/a/g$a;-><init>(Lme/piebridge/prevent/ui/a/g$1;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method private static a(Landroid/content/SharedPreferences;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 178
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 179
    if-nez v1, :cond_19

    const/4 v0, 0x1

    .line 181
    :goto_7
    :try_start_7
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_a} :catch_1b

    move-result v0

    .line 185
    :goto_b
    if-eq v0, v1, :cond_18

    .line 186
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    :cond_18
    return-void

    .line 179
    :cond_19
    const/4 v0, 0x0

    goto :goto_7

    .line 182
    :catch_1b
    move-exception v2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Z)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 130
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 131
    const-string v4, "force_stop_timeout"

    const-wide/16 v6, -0x1

    invoke-static {v0, v3, v4, v6, v7}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;J)J

    .line 132
    const-string v4, "destroy_processes"

    invoke-static {v0, v3, v4, v2}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 133
    const-string v4, "lock_sync_settings"

    invoke-static {v0, v3, v4, v2}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 134
    const-string v4, "auto_prevent"

    invoke-static {v0, v3, v4, v1}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 135
    const-string v4, "use_app_standby"

    invoke-static {v0, v3, v4, v2}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 136
    const-string v4, "allow_empty_sender"

    invoke-static {v0, v3, v4, v1}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 137
    const-string v4, "stop_signature_apps"

    invoke-static {v0, v3, v4, v1}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 138
    const/4 v0, 0x0

    .line 139
    if-eqz p1, :cond_52

    .line 140
    invoke-static {}, Lme/piebridge/prevent/ui/a/f;->a()Lme/piebridge/prevent/ui/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/piebridge/prevent/ui/a/f;->b(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_52

    .line 142
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {p0, v4}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/Context;I)V

    .line 143
    const-string v4, "prevent_list"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 146
    :cond_52
    invoke-static {p0, v3}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 147
    if-eqz v0, :cond_5f

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    move v0, v1

    :goto_5e
    return v0

    :cond_5f
    move v0, v2

    goto :goto_5e
.end method

.method private static a(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .registers 7

    .prologue
    .line 151
    .line 153
    :try_start_0
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_22

    move-result p3

    .line 158
    :goto_4
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;)V

    .line 160
    return p3

    .line 154
    :catch_22
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    const v1, 0x7f050034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 70
    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 71
    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 72
    new-instance v1, Lme/piebridge/prevent/ui/a/g$1;

    invoke-direct {v1}, Lme/piebridge/prevent/ui/a/g$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    const v1, 0x104000a

    new-instance v2, Lme/piebridge/prevent/ui/a/g$2;

    invoke-direct {v2, p0}, Lme/piebridge/prevent/ui/a/g$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 85
    return-void
.end method

.method private static b(Landroid/content/SharedPreferences;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 191
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 192
    const-wide/16 v0, 0x1

    add-long v2, v4, v0

    .line 194
    :try_start_8
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_28
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_13} :catch_41

    move-result-wide v0

    .line 200
    :goto_14
    cmp-long v0, v0, v4

    if-eqz v0, :cond_27

    .line 201
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    :cond_27
    return-void

    .line 195
    :catch_28
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid value for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 199
    goto :goto_14

    .line 197
    :catch_41
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid value for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_14
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/Context;Z)Z

    .line 126
    return-void
.end method
