package br.com.iagenda

import org.apache.commons.lang.builder.HashCodeBuilder

class SecUserSecRole implements Serializable {

    private static final long serialVersionUID = 1

    SecUser secUser
    SecRole sercRole

    boolean equals(other) {
        if (!(other instanceof SecUserSecRole)) {
            return false
        }

        other.secUser?.id == secUser?.id &&
                other.sercRole?.id == sercRole?.id
    }

    int hashCode() {
        def builder = new HashCodeBuilder()
        if (secUser) builder.append(secUser.id)
        if (sercRole) builder.append(sercRole.id)
        builder.toHashCode()
    }

    static SecUserSecRole get(long secUserId, long sercRoleId) {
        SecUserSecRole.where {
            secUser == SecUser.load(secUserId) &&
                    sercRole == SecRole.load(sercRoleId)
        }.get()
    }

    static boolean exists(long secUserId, long sercRoleId) {
        SecUserSecRole.where {
            secUser == SecUser.load(secUserId) &&
                    sercRole == SecRole.load(sercRoleId)
        }.count() > 0
    }

    static SecUserSecRole create(SecUser secUser, SecRole sercRole, boolean flush = false) {
        def instance = new SecUserSecRole(secUser: secUser, sercRole: sercRole)
        instance.save(flush: flush, insert: true)
        instance
    }

    static boolean remove(SecUser u, SecRole r, boolean flush = false) {
        if (u == null || r == null) return false

        int rowCount = SecUserSecRole.where {
            secUser == SecUser.load(u.id) &&
                    sercRole == SecRole.load(r.id)
        }.deleteAll()

        if (flush) {
            SecUserSecRole.withSession { it.flush() }
        }

        rowCount > 0
    }

    static void removeAll(SecUser u, boolean flush = false) {
        if (u == null) return

        SecUserSecRole.where {
            secUser == SecUser.load(u.id)
        }.deleteAll()

        if (flush) {
            SecUserSecRole.withSession { it.flush() }
        }
    }

    static void removeAll(SecRole r, boolean flush = false) {
        if (r == null) return

        SecUserSecRole.where {
            sercRole == SecRole.load(r.id)
        }.deleteAll()

        if (flush) {
            SecUserSecRole.withSession { it.flush() }
        }
    }

    static constraints = {
        sercRole validator: { SecRole r, SecUserSecRole ur ->
            if (ur.secUser == null) return
            boolean existing = false
            SecUserSecRole.withNewSession {
                existing = SecUserSecRole.exists(ur.secUser.id, r.id)
            }
            if (existing) {
                return 'userRole.exists'
            }
        }
    }

    static mapping = {
        id composite: ['sercRole', 'secUser']
        version false
    }
}
