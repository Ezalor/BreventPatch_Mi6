.class Lme/piebridge/prevent/ui/a/g$a;
.super Landroid/content/BroadcastReceiver;
.source "PreventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/piebridge/prevent/ui/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/piebridge/prevent/ui/a/g$1;)V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Lme/piebridge/prevent/ui/a/g$a;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 104
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 118
    :catch_1e
    move-exception v0

    .line 119
    const-string v1, "cannot convert to json"

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :goto_24
    return-void

    .line 111
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/a/g$a;->getResultCode()I

    move-result v0

    .line 112
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_3a

    .line 113
    invoke-static {p1, v0}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/Context;I)V

    .line 114
    invoke-static {}, Lme/piebridge/prevent/ui/a/f;->a()Lme/piebridge/prevent/ui/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lme/piebridge/prevent/ui/a/f;->a(Landroid/content/Context;Ljava/util/Set;)V

    goto :goto_24

    .line 116
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update prevents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->c(Ljava/lang/String;)V
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_5e} :catch_1e

    goto :goto_24
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/a/g$a;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 97
    const-string v2, "me.piebridge.prevent.UPDATE_PREVENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 98
    invoke-direct {p0, p1, v1}, Lme/piebridge/prevent/ui/a/g$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    :cond_15
    return-void
.end method
