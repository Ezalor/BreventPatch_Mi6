.class Landroid/support/v4/a/e$o;
.super Landroid/support/v4/a/e$l;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 633
    invoke-direct {p0}, Landroid/support/v4/a/e$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/e$d;Landroid/support/v4/a/e$e;)Landroid/app/Notification;
    .registers 29

    .prologue
    .line 636
    new-instance v2, Landroid/support/v4/a/l$a;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/a/e$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/a/e$d;->F:Landroid/app/Notification;

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/a/e$d;->d()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/a/e$d;->c()Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/a/e$d;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/a/e$d;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/a/e$d;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/a/e$d;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/a/e$d;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/a/e$d;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/a/e$d;->p:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/a/e$d;->q:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/a/e$d;->r:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/a/e$d;->l:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/a/e$d;->j:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/e$d;->n:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/a/e$d;->w:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/e$d;->y:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/e$d;->s:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/a/e$d;->t:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/e$d;->u:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/e$d;->C:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/e$d;->D:Landroid/widget/RemoteViews;

    move-object/from16 v25, v0

    invoke-direct/range {v2 .. v25}, Landroid/support/v4/a/l$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 642
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/a/e$d;->v:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/a/e;->a(Landroid/support/v4/a/c;Ljava/util/ArrayList;)V

    .line 643
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/a/e$d;->m:Landroid/support/v4/a/e$q;

    invoke-static {v2, v3}, Landroid/support/v4/a/e;->a(Landroid/support/v4/a/d;Landroid/support/v4/a/e$q;)V

    .line 644
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e$e;->a(Landroid/support/v4/a/e$d;Landroid/support/v4/a/d;)Landroid/app/Notification;

    move-result-object v2

    .line 645
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/a/e$d;->m:Landroid/support/v4/a/e$q;

    if-eqz v3, :cond_a0

    .line 646
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/a/e$o;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    .line 647
    if-eqz v3, :cond_a0

    .line 648
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/a/e$d;->m:Landroid/support/v4/a/e$q;

    invoke-virtual {v4, v3}, Landroid/support/v4/a/e$q;->a(Landroid/os/Bundle;)V

    .line 651
    :cond_a0
    return-object v2
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 656
    invoke-static {p1}, Landroid/support/v4/a/l;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
