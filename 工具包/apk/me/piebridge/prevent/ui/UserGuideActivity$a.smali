.class Lme/piebridge/prevent/ui/UserGuideActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "UserGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/piebridge/prevent/ui/UserGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/UserGuideActivity;


# direct methods
.method private constructor <init>(Lme/piebridge/prevent/ui/UserGuideActivity;)V
    .registers 2

    .prologue
    .line 362
    iput-object p1, p0, Lme/piebridge/prevent/ui/UserGuideActivity$a;->a:Lme/piebridge/prevent/ui/UserGuideActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/piebridge/prevent/ui/UserGuideActivity;Lme/piebridge/prevent/ui/UserGuideActivity$1;)V
    .registers 3

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/UserGuideActivity$a;-><init>(Lme/piebridge/prevent/ui/UserGuideActivity;)V

    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 372
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/UserGuideActivity$a;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 384
    :goto_a
    return-void

    .line 377
    :cond_b
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lme/piebridge/prevent/ui/UserGuideActivity$a;->a:Lme/piebridge/prevent/ui/UserGuideActivity;

    const-string v3, "version"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Lme/piebridge/prevent/ui/UserGuideActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 379
    iget-object v2, p0, Lme/piebridge/prevent/ui/UserGuideActivity$a;->a:Lme/piebridge/prevent/ui/UserGuideActivity;

    const-string v3, "method"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Lme/piebridge/prevent/ui/UserGuideActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iget-object v2, p0, Lme/piebridge/prevent/ui/UserGuideActivity$a;->a:Lme/piebridge/prevent/ui/UserGuideActivity;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->b(Lme/piebridge/prevent/ui/UserGuideActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_35} :catch_36

    goto :goto_a

    .line 381
    :catch_36
    move-exception v0

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get version from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 366
    const-string v1, "me.piebridge.prevent.GET_INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 367
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity$a;->a()V

    .line 369
    :cond_f
    return-void
.end method
