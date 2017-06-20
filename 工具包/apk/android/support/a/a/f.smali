.class public abstract Landroid/support/a/a/f;
.super Landroid/support/v4/view/i;
.source "FragmentStatePagerAdapter.java"


# instance fields
.field private final a:Landroid/app/FragmentManager;

.field private b:Landroid/app/FragmentTransaction;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/support/v4/view/i;-><init>()V

    .line 73
    iput-object v1, p0, Landroid/support/a/a/f;->b:Landroid/app/FragmentTransaction;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    .line 77
    iput-object v1, p0, Landroid/support/a/a/f;->e:Landroid/app/Fragment;

    .line 80
    iput-object p1, p0, Landroid/support/a/a/f;->a:Landroid/app/FragmentManager;

    .line 81
    return-void
.end method


# virtual methods
.method public abstract a(I)Landroid/app/Fragment;
.end method

.method public a()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    iget-object v1, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Fragment$SavedState;

    .line 187
    iget-object v2, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 188
    const-string v2, "states"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 190
    :cond_20
    const/4 v1, 0x0

    move-object v2, v0

    :goto_22
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5d

    .line 191
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 192
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 193
    if-nez v2, :cond_41

    .line 194
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 196
    :cond_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    iget-object v4, p0, Landroid/support/a/a/f;->a:Landroid/app/FragmentManager;

    invoke-virtual {v4, v2, v3, v0}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 190
    :cond_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 200
    :cond_5d
    return-object v2
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_14

    .line 103
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 104
    if-eqz v0, :cond_14

    .line 129
    :goto_13
    return-object v0

    .line 109
    :cond_14
    iget-object v0, p0, Landroid/support/a/a/f;->b:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_20

    .line 110
    iget-object v0, p0, Landroid/support/a/a/f;->a:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/f;->b:Landroid/app/FragmentTransaction;

    .line 113
    :cond_20
    invoke-virtual {p0, p2}, Landroid/support/a/a/f;->a(I)Landroid/app/Fragment;

    move-result-object v1

    .line 115
    iget-object v0, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_39

    .line 116
    iget-object v0, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment$SavedState;

    .line 117
    if-eqz v0, :cond_39

    .line 118
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setInitialSavedState(Landroid/app/Fragment$SavedState;)V

    .line 121
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_48

    .line 122
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 124
    :cond_48
    invoke-static {v1, v3}, Landroid/support/a/a/b;->a(Landroid/app/Fragment;Z)V

    .line 125
    invoke-static {v1, v3}, Landroid/support/a/a/b;->b(Landroid/app/Fragment;Z)V

    .line 126
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Landroid/support/a/a/f;->b:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-object v0, v1

    .line 129
    goto :goto_13
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 205
    if-eqz p1, :cond_89

    .line 206
    check-cast p1, Landroid/os/Bundle;

    .line 207
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 208
    const-string v0, "states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 209
    iget-object v0, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    if-eqz v3, :cond_2b

    move v1, v2

    .line 212
    :goto_1b
    array-length v0, v3

    if-ge v1, v0, :cond_2b

    .line 213
    iget-object v4, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    aget-object v0, v3, v1

    check-cast v0, Landroid/app/Fragment$SavedState;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 216
    :cond_2b
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    const-string v3, "f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 219
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 220
    iget-object v4, p0, Landroid/support/a/a/f;->a:Landroid/app/FragmentManager;

    invoke-virtual {v4, p1, v0}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 221
    if-eqz v4, :cond_70

    .line 222
    :goto_58
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_67

    .line 223
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 225
    :cond_67
    invoke-static {v4, v2}, Landroid/support/a/a/b;->a(Landroid/app/Fragment;Z)V

    .line 226
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 228
    :cond_70
    const-string v3, "FragmentStatePagerAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad fragment at key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 233
    :cond_89
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_26
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 134
    check-cast p3, Landroid/app/Fragment;

    .line 136
    iget-object v0, p0, Landroid/support/a/a/f;->b:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_f

    .line 137
    iget-object v0, p0, Landroid/support/a/a/f;->a:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/f;->b:Landroid/app/FragmentTransaction;

    .line 141
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1d

    .line 142
    iget-object v0, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 144
    :cond_1d
    iget-object v2, p0, Landroid/support/a/a/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/support/a/a/f;->a:Landroid/app/FragmentManager;

    .line 145
    invoke-virtual {v0, p3}, Landroid/app/FragmentManager;->saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;

    move-result-object v0

    .line 144
    :goto_2b
    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Landroid/support/a/a/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Landroid/support/a/a/f;->b:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 149
    return-void

    :cond_39
    move-object v0, v1

    .line 145
    goto :goto_2b
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 178
    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b(Landroid/view/ViewGroup;)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/a/a/f;->b:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_11

    .line 170
    iget-object v0, p0, Landroid/support/a/a/f;->b:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/f;->b:Landroid/app/FragmentTransaction;

    .line 172
    iget-object v0, p0, Landroid/support/a/a/f;->a:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 174
    :cond_11
    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    check-cast p3, Landroid/app/Fragment;

    .line 154
    iget-object v0, p0, Landroid/support/a/a/f;->e:Landroid/app/Fragment;

    if-eq p3, v0, :cond_20

    .line 155
    iget-object v0, p0, Landroid/support/a/a/f;->e:Landroid/app/Fragment;

    if-eqz v0, :cond_16

    .line 156
    iget-object v0, p0, Landroid/support/a/a/f;->e:Landroid/app/Fragment;

    invoke-static {v0, v1}, Landroid/support/a/a/b;->a(Landroid/app/Fragment;Z)V

    .line 157
    iget-object v0, p0, Landroid/support/a/a/f;->e:Landroid/app/Fragment;

    invoke-static {v0, v1}, Landroid/support/a/a/b;->b(Landroid/app/Fragment;Z)V

    .line 159
    :cond_16
    if-eqz p3, :cond_1e

    .line 160
    invoke-static {p3, v2}, Landroid/support/a/a/b;->a(Landroid/app/Fragment;Z)V

    .line 161
    invoke-static {p3, v2}, Landroid/support/a/a/b;->b(Landroid/app/Fragment;Z)V

    .line 163
    :cond_1e
    iput-object p3, p0, Landroid/support/a/a/f;->e:Landroid/app/Fragment;

    .line 165
    :cond_20
    return-void
.end method
