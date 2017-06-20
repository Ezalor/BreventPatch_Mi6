.class public Landroid/support/v4/a/e$e;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "e"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/e$d;Landroid/support/v4/a/d;)Landroid/app/Notification;
    .registers 5

    .prologue
    .line 520
    invoke-interface {p2}, Landroid/support/v4/a/d;->b()Landroid/app/Notification;

    move-result-object v0

    .line 521
    iget-object v1, p1, Landroid/support/v4/a/e$d;->C:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_c

    .line 522
    iget-object v1, p1, Landroid/support/v4/a/e$d;->C:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 524
    :cond_c
    return-object v0
.end method
