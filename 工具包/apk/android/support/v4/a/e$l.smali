.class Landroid/support/v4/a/e$l;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/a/e$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/e$d;Landroid/support/v4/a/e$e;)Landroid/app/Notification;
    .registers 9

    .prologue
    .line 531
    iget-object v0, p1, Landroid/support/v4/a/e$d;->F:Landroid/app/Notification;

    .line 532
    iget-object v1, p1, Landroid/support/v4/a/e$d;->a:Landroid/content/Context;

    .line 533
    invoke-virtual {p1}, Landroid/support/v4/a/e$d;->d()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/a/e$d;->c()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v4/a/e$d;->d:Landroid/app/PendingIntent;

    iget-object v5, p1, Landroid/support/v4/a/e$d;->e:Landroid/app/PendingIntent;

    .line 532
    invoke-static/range {v0 .. v5}, Landroid/support/v4/a/i;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 535
    iget v1, p1, Landroid/support/v4/a/e$d;->j:I

    if-lez v1, :cond_1e

    .line 536
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 538
    :cond_1e
    iget-object v1, p1, Landroid/support/v4/a/e$d;->C:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_26

    .line 539
    iget-object v1, p1, Landroid/support/v4/a/e$d;->C:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 541
    :cond_26
    return-object v0
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 546
    const/4 v0, 0x0

    return-object v0
.end method
