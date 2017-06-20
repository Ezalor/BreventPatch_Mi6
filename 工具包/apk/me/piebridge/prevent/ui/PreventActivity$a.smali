.class Lme/piebridge/prevent/ui/PreventActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "PreventActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/piebridge/prevent/ui/PreventActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/PreventActivity;


# direct methods
.method private constructor <init>(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 2

    .prologue
    .line 592
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/piebridge/prevent/ui/PreventActivity;Lme/piebridge/prevent/ui/PreventActivity$1;)V
    .registers 3

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity$a;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 618
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/a/h;->c(Landroid/content/Context;)V

    .line 619
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    new-instance v1, Lme/piebridge/prevent/ui/PreventActivity$a$1;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/ui/PreventActivity$a$1;-><init>(Lme/piebridge/prevent/ui/PreventActivity$a;)V

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 629
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity$a;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 630
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 642
    :goto_a
    return-void

    .line 634
    :cond_b
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lme/piebridge/prevent/ui/PreventActivity;->b(Lme/piebridge/prevent/ui/PreventActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    iget-object v2, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lme/piebridge/prevent/ui/PreventActivity;->b(Lme/piebridge/prevent/ui/PreventActivity;I)I

    .line 637
    invoke-static {p1, v0}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 638
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->h(Lme/piebridge/prevent/ui/PreventActivity;)Z
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_2e} :catch_2f

    goto :goto_a

    .line 639
    :catch_2f
    move-exception v0

    .line 640
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

.method private a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 670
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 671
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 672
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 673
    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 674
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 676
    if-eqz v4, :cond_e

    .line 677
    invoke-direct {p0, v4}, Lme/piebridge/prevent/ui/PreventActivity$a;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_e

    .line 683
    :catch_28
    move-exception v0

    .line 684
    const-string v1, "cannot convert to json"

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    :goto_2e
    return-void

    .line 680
    :cond_2f
    :try_start_2f
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 681
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 682
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->j(Lme/piebridge/prevent/ui/PreventActivity;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_42} :catch_28

    goto :goto_2e
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/PreventActivity$a;)V
    .registers 1

    .prologue
    .line 592
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity$a;->e()V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 690
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_3f

    aget-object v5, v3, v1

    .line 691
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 693
    :try_start_18
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_23} :catch_27

    .line 690
    :cond_23
    :goto_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 694
    :catch_27
    move-exception v0

    .line 695
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 699
    :cond_3f
    return-object v2
.end method

.method private b()V
    .registers 3

    .prologue
    .line 645
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->g(Lme/piebridge/prevent/ui/PreventActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->g(Lme/piebridge/prevent/ui/PreventActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 646
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    new-instance v1, Lme/piebridge/prevent/ui/PreventActivity$a$2;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/ui/PreventActivity$a$2;-><init>(Lme/piebridge/prevent/ui/PreventActivity$a;)V

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 658
    :cond_1e
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 661
    const-string v0, "received get processes broadcast"

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity$a;->getResultData()Ljava/lang/String;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_e

    .line 664
    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity$a;->a(Ljava/lang/String;)V

    .line 666
    :cond_e
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 735
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 736
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 737
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 738
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 739
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 740
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_e

    .line 754
    :catch_26
    move-exception v0

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot convert to json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    :cond_3d
    :goto_3d
    return-void

    .line 742
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->d(Lme/piebridge/prevent/ui/PreventActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_45} :catch_26

    .line 743
    :try_start_45
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->g()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_71

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 748
    :goto_53
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 749
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_79

    .line 750
    :try_start_5b
    invoke-static {}, Lme/piebridge/prevent/ui/a/f;->a()Lme/piebridge/prevent/ui/a/f;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lme/piebridge/prevent/ui/a/f;->b(Landroid/content/Context;Ljava/util/Set;)Z

    move-result v0

    .line 751
    if-eqz v0, :cond_3d

    .line 752
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->b(Lme/piebridge/prevent/ui/PreventActivity;)V
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_70} :catch_26

    goto :goto_3d

    .line 746
    :cond_71
    :try_start_71
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_53

    .line 749
    :catchall_79
    move-exception v0

    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_71 .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v0
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_7c} :catch_26
.end method

.method private d()Z
    .registers 4

    .prologue
    .line 703
    const-string v0, "received get prevent packages broadcast"

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity$a;->getResultData()Ljava/lang/String;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_1e

    .line 706
    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity$a;->c(Ljava/lang/String;)V

    .line 707
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->g()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 708
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity$a;->e()V

    .line 709
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->i(Lme/piebridge/prevent/ui/PreventActivity;)V

    .line 710
    const/4 v0, 0x1

    .line 721
    :goto_1d
    return v0

    .line 713
    :cond_1e
    iget-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    new-instance v2, Lme/piebridge/prevent/ui/PreventActivity$a$3;

    invoke-direct {v2, p0, v0}, Lme/piebridge/prevent/ui/PreventActivity$a$3;-><init>(Lme/piebridge/prevent/ui/PreventActivity$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lme/piebridge/prevent/ui/PreventActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 721
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private e()V
    .registers 3

    .prologue
    .line 725
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    new-instance v1, Lme/piebridge/prevent/ui/PreventActivity$a$4;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/ui/PreventActivity$a$4;-><init>(Lme/piebridge/prevent/ui/PreventActivity$a;)V

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 731
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 595
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 596
    const-string v1, "me.piebridge.prevent.GET_PROCESSES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 597
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity$a;->c()V

    .line 598
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity$a;->b()V

    .line 615
    :cond_12
    :goto_12
    return-void

    .line 599
    :cond_13
    const-string v1, "me.piebridge.prevent.GET_PACKAGES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 600
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity$a;->d()Z

    goto :goto_12

    .line 601
    :cond_1f
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 602
    invoke-static {p2}, Lme/piebridge/prevent/a/f;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->h()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 604
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_38
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->g()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->g()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 607
    invoke-static {}, Lme/piebridge/prevent/ui/PreventActivity;->g()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_5a
    iget-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/PreventActivity;->a(Lme/piebridge/prevent/ui/PreventActivity;Ljava/lang/String;)V

    goto :goto_12

    .line 610
    :cond_60
    const-string v1, "me.piebridge.prevent.GET_INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 611
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity$a;->a(Landroid/content/Context;)V

    goto :goto_12

    .line 612
    :cond_6c
    const-string v1, "me.piebridge.prevent.SYSTEM_LOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 613
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity$a;->a()V

    goto :goto_12
.end method
