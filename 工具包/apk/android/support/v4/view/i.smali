.class public abstract Landroid/support/v4/view/i;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# instance fields
.field private final a:Landroid/database/DataSetObservable;

.field private b:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/i;->a:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 274
    const/4 v0, -0x1

    return v0
.end method

.method public a()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/i;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/DataSetObserver;)V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/v4/view/i;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    .prologue
    .line 256
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/support/v4/view/i;->a(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/i;->a(Landroid/view/View;ILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public abstract b()I
.end method

.method public b(I)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/database/DataSetObserver;)V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/v4/view/i;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method public b(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Landroid/support/v4/view/i;->b(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/i;->b(Landroid/view/View;ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method public c(I)F
    .registers 3

    .prologue
    .line 335
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 282
    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/view/i;->b:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_a

    .line 284
    iget-object v0, p0, Landroid/support/v4/view/i;->b:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 286
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    .line 287
    iget-object v0, p0, Landroid/support/v4/view/i;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 288
    return-void

    .line 286
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method c(Landroid/database/DataSetObserver;)V
    .registers 3

    .prologue
    .line 309
    monitor-enter p0

    .line 310
    :try_start_1
    iput-object p1, p0, Landroid/support/v4/view/i;->b:Landroid/database/DataSetObserver;

    .line 311
    monitor-exit p0

    .line 312
    return-void

    .line 311
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
