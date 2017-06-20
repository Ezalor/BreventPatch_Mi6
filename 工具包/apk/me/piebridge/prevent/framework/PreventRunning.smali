.class public Lme/piebridge/prevent/framework/PreventRunning;
.super Ljava/lang/Object;
.source "PreventRunning.java"

# interfaces
.implements Lcom/android/server/am/PreventRunningHook;


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/framework/PreventRunning;->a:Ljava/lang/ThreadLocal;

    .line 28
    const-string v0, "prevent running 3.1.2"

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->c(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/ClassLoader;)V

    .line 31
    const-string v0, "boot"

    const-string v1, "*:v"

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public hookBindService(Landroid/content/Intent;)Z
    .registers 3

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public hookStartProcessLocked(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 6

    .prologue
    .line 116
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lme/piebridge/prevent/framework/PreventRunning;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, v0}, Lme/piebridge/prevent/framework/a;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public hookStartService(Landroid/content/Intent;)Z
    .registers 3

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public isExcludingStopped(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 111
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lme/piebridge/prevent/framework/a/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public match(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lme/piebridge/prevent/framework/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 123
    instance-of v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    if-eqz v0, :cond_2d

    .line 124
    check-cast p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    iget-object v0, p0, Lme/piebridge/prevent/framework/PreventRunning;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0, p3}, Lme/piebridge/prevent/framework/d;->a(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;Ljava/lang/String;)Lme/piebridge/prevent/framework/e;

    move-result-object v0

    .line 132
    :goto_1e
    invoke-virtual {v0}, Lme/piebridge/prevent/framework/e;->a()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 133
    invoke-virtual {v0}, Lme/piebridge/prevent/framework/e;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 136
    :cond_2c
    return p1

    .line 125
    :cond_2d
    instance-of v0, p2, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    if-eqz v0, :cond_40

    .line 126
    check-cast p2, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    iget-object v0, p0, Lme/piebridge/prevent/framework/PreventRunning;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0, p3}, Lme/piebridge/prevent/framework/d;->a(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/lang/String;Ljava/lang/String;)Lme/piebridge/prevent/framework/e;

    move-result-object v0

    goto :goto_1e

    .line 127
    :cond_40
    invoke-static {p2}, Lme/piebridge/prevent/framework/a/e;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 128
    invoke-static {p2, p3, p6, p7}, Lme/piebridge/prevent/framework/d;->a(Ljava/lang/Object;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;)Lme/piebridge/prevent/framework/e;

    move-result-object v0

    goto :goto_1e

    .line 130
    :cond_4b
    sget-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    goto :goto_1e
.end method

.method public onAppDied(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 76
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->e(Ljava/lang/Object;)V

    .line 79
    :cond_9
    return-void
.end method

.method public onBroadcastIntent(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 43
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/a/o;->a(Landroid/content/ComponentName;Z)V

    .line 51
    :cond_1a
    :goto_1a
    return-void

    .line 47
    :cond_1b
    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/a/o;->a(Landroid/content/ComponentName;Z)V

    goto :goto_1a
.end method

.method public onCleanUpRemovedTask(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 56
    invoke-static {p1}, Lme/piebridge/prevent/framework/a;->b(Ljava/lang/String;)Z

    .line 58
    :cond_9
    return-void
.end method

.method public onDestroyActivity(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 104
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->b(Ljava/lang/Object;)V

    .line 107
    :cond_9
    return-void
.end method

.method public onLaunchActivity(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 83
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->a(Ljava/lang/Object;)V

    .line 86
    :cond_9
    return-void
.end method

.method public onMoveActivityTaskToBack(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->g(Ljava/lang/String;)V

    .line 72
    :cond_9
    return-void
.end method

.method public onResumeActivity(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 90
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->c(Ljava/lang/Object;)V

    .line 93
    :cond_9
    return-void
.end method

.method public onStartHomeActivity(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 62
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->f(Ljava/lang/String;)V

    .line 65
    :cond_9
    return-void
.end method

.method public onUserLeavingActivity(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 97
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->d(Ljava/lang/Object;)V

    .line 100
    :cond_9
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bridge method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 148
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->m(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 36
    invoke-static {}, Lme/piebridge/prevent/framework/g;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    iget-object v0, p0, Lme/piebridge/prevent/framework/PreventRunning;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 39
    :cond_b
    return-void
.end method

.method public setVersion(I)V
    .registers 4

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bridge version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/framework/f;->b(Ljava/lang/String;)V

    .line 142
    invoke-static {p1}, Lme/piebridge/prevent/framework/g;->b(I)V

    .line 143
    return-void
.end method
