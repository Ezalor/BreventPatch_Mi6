.class public Landroid/support/v4/a/a;
.super Landroid/support/v4/b/a;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 372
    invoke-static {p0, p1, p2}, Landroid/support/v4/a/b;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 394
    :cond_9
    :goto_9
    return-void

    .line 373
    :cond_a
    instance-of v0, p0, Landroid/support/v4/a/a$a;

    if-eqz v0, :cond_9

    .line 374
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 375
    new-instance v1, Landroid/support/v4/a/a$1;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/a/a$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 419
    invoke-static {p0, p1}, Landroid/support/v4/a/b;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 421
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
