.class Landroid/support/v4/a/e$m;
.super Landroid/support/v4/a/e$l;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 608
    invoke-direct {p0}, Landroid/support/v4/a/e$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/e$d;Landroid/support/v4/a/e$e;)Landroid/app/Notification;
    .registers 13

    .prologue
    .line 611
    iget-object v0, p1, Landroid/support/v4/a/e$d;->a:Landroid/content/Context;

    iget-object v1, p1, Landroid/support/v4/a/e$d;->F:Landroid/app/Notification;

    .line 612
    invoke-virtual {p1}, Landroid/support/v4/a/e$d;->d()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/a/e$d;->c()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v4/a/e$d;->h:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/a/e$d;->f:Landroid/widget/RemoteViews;

    iget v6, p1, Landroid/support/v4/a/e$d;->i:I

    iget-object v7, p1, Landroid/support/v4/a/e$d;->d:Landroid/app/PendingIntent;

    iget-object v8, p1, Landroid/support/v4/a/e$d;->e:Landroid/app/PendingIntent;

    iget-object v9, p1, Landroid/support/v4/a/e$d;->g:Landroid/graphics/Bitmap;

    .line 611
    invoke-static/range {v0 .. v9}, Landroid/support/v4/a/j;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    .line 614
    iget-object v1, p1, Landroid/support/v4/a/e$d;->C:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_24

    .line 615
    iget-object v1, p1, Landroid/support/v4/a/e$d;->C:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 617
    :cond_24
    return-object v0
.end method
