.class public Landroid/support/v4/a/m$a;
.super Ljava/lang/Object;
.source "NotificationCompatKitKat.java"

# interfaces
.implements Landroid/support/v4/a/c;
.implements Landroid/support/v4/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/app/Notification$Builder;

.field private b:Landroid/os/Bundle;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/RemoteViews;

.field private e:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Notification;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/graphics/Bitmap;",
            "IIZZZI",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v4/a/m$a;->c:Ljava/util/List;

    .line 47
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v6, p2, Landroid/app/Notification;->when:J

    .line 48
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 49
    move/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->icon:I

    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    .line 50
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 51
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    .line 53
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    .line 54
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    .line 55
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_11b

    const/4 v4, 0x1

    .line 56
    :goto_4e
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_11e

    const/4 v4, 0x1

    .line 57
    :goto_59
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_121

    const/4 v4, 0x1

    .line 58
    :goto_64
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->defaults:I

    .line 59
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 60
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 61
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 62
    move-object/from16 v0, p17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 63
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 64
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 65
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_124

    const/4 v4, 0x1

    .line 66
    :goto_93
    move-object/from16 v0, p9

    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 68
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 69
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 70
    move/from16 v0, p15

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 71
    move/from16 v0, p16

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 72
    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/a/m$a;->a:Landroid/app/Notification$Builder;

    .line 73
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Landroid/support/v4/a/m$a;->b:Landroid/os/Bundle;

    .line 74
    if-eqz p20, :cond_cb

    .line 75
    iget-object v4, p0, Landroid/support/v4/a/m$a;->b:Landroid/os/Bundle;

    move-object/from16 v0, p20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 77
    :cond_cb
    if-eqz p19, :cond_e8

    invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e8

    .line 78
    iget-object v5, p0, Landroid/support/v4/a/m$a;->b:Landroid/os/Bundle;

    const-string v6, "android.people"

    .line 79
    invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, p19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 78
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    :cond_e8
    if-eqz p18, :cond_f2

    .line 82
    iget-object v4, p0, Landroid/support/v4/a/m$a;->b:Landroid/os/Bundle;

    const-string v5, "android.support.localOnly"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    :cond_f2
    if-eqz p21, :cond_107

    .line 85
    iget-object v4, p0, Landroid/support/v4/a/m$a;->b:Landroid/os/Bundle;

    const-string v5, "android.support.groupKey"

    move-object/from16 v0, p21

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p22, :cond_127

    .line 87
    iget-object v4, p0, Landroid/support/v4/a/m$a;->b:Landroid/os/Bundle;

    const-string v5, "android.support.isGroupSummary"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    :cond_107
    :goto_107
    if-eqz p23, :cond_112

    .line 93
    iget-object v4, p0, Landroid/support/v4/a/m$a;->b:Landroid/os/Bundle;

    const-string v5, "android.support.sortKey"

    move-object/from16 v0, p23

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_112
    move-object/from16 v0, p24

    iput-object v0, p0, Landroid/support/v4/a/m$a;->d:Landroid/widget/RemoteViews;

    .line 96
    move-object/from16 v0, p25

    iput-object v0, p0, Landroid/support/v4/a/m$a;->e:Landroid/widget/RemoteViews;

    .line 97
    return-void

    .line 55
    :cond_11b
    const/4 v4, 0x0

    goto/16 :goto_4e

    .line 56
    :cond_11e
    const/4 v4, 0x0

    goto/16 :goto_59

    .line 57
    :cond_121
    const/4 v4, 0x0

    goto/16 :goto_64

    .line 65
    :cond_124
    const/4 v4, 0x0

    goto/16 :goto_93

    .line 89
    :cond_127
    iget-object v4, p0, Landroid/support/v4/a/m$a;->b:Landroid/os/Bundle;

    const-string v5, "android.support.useSideChannel"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_107
.end method


# virtual methods
.method public a()Landroid/app/Notification$Builder;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v4/a/m$a;->a:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public a(Landroid/support/v4/a/i$a;)V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v4/a/m$a;->c:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/a/m$a;->a:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroid/support/v4/a/l;->a(Landroid/app/Notification$Builder;Landroid/support/v4/a/i$a;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public b()Landroid/app/Notification;
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/a/m$a;->c:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/a/l;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_f

    .line 115
    iget-object v1, p0, Landroid/support/v4/a/m$a;->b:Landroid/os/Bundle;

    const-string v2, "android.support.actionExtras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 118
    :cond_f
    iget-object v0, p0, Landroid/support/v4/a/m$a;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/a/m$a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 119
    iget-object v0, p0, Landroid/support/v4/a/m$a;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 120
    iget-object v1, p0, Landroid/support/v4/a/m$a;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_24

    .line 121
    iget-object v1, p0, Landroid/support/v4/a/m$a;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 123
    :cond_24
    iget-object v1, p0, Landroid/support/v4/a/m$a;->e:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_2c

    .line 124
    iget-object v1, p0, Landroid/support/v4/a/m$a;->e:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 126
    :cond_2c
    return-object v0
.end method
